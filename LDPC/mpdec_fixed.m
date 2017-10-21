% mpdec
% Message passing algorithm for decoding binary LDPC codes
% Syntax
%   [cHat, nIteration] = mpdec(H, rxLLR, nIterationMax)
% Arguments
%   cHat - Estimated codeword, row vector
%   nIteration - Number of iterations executed
%   H - Parity check matrix of the LDPC code, in sparse form
%   rxLLR - Received LLR values, row vector
%   nIterationMax - Maximum number of iterations

% Workflow
%   1. Compute bit to check message.
%   2. Compute check to bit message.
%   3. Update bit message.
%   4. Perform hard decision, then exit or continue iteration.
% 
% Issues
%   2. Implement as a MATLAB class, separate the initialization
%   data as properties of the class, and do the initialization
%   in a function for only once before decoding.

% Author: Alan Bao Jian ZHOU
% Created: 20140719
% Last-Modified: 20140727

%b = sparse([1 1 0 1 0 0;0 1 1 0 1 0;1 0 1 0 0 1])
%llr = [-2 -2 -1 2 -2 0]

function [cHat, nIteration] = mpdec(H, rxLLR, nIterationMax, tanh_table, atanh_table)
    
    % Code structure
    % Caution: Move this part out for efficiency, as an independent preprocessing function.
    [nCheck, nBit] = size(H);
    nEdge = nnz(H);
    indexLinear = find(H);
    [indexCheck, indexBit] = find(H); % For sparse matrix, find() is fast.
    % The following initialization of the check nodes takes ONE THIRD of the running time!
    checkNode = struct('indexBitConnected', 0);
    check = repmat(checkNode, nCheck, 1);
    for iCheck = 1:nCheck
        check(iCheck).indexBitConnected = indexBit(indexCheck == iCheck); % Connections to check nodes
    end % for iCheck

    % Messages
    % Caution: Move the memory allocation of this part out for efficiency.
    messageChannel = fpt(rxLLR);
    messageBit = messageChannel; % Intialize bit messages
    msgb2ch = spalloc(nCheck, nBit, nEdge);
    msgch2b = spalloc(nCheck, nBit, nEdge);
    cHat = zeros(1,nBit);
    for nIteration = 1:nIterationMax
        msgb2ch(indexLinear) = fpt(fpt(messageBit(indexBit)).' - msgch2b(indexLinear));
        for iCheck = 1:nCheck
            for iBit = check(iCheck).indexBitConnected'
                product = fpt(prod(cell2mat(values(tanh_table,num2cell(fpt(full(msgb2ch(iCheck, setdiff(getfield(check(iCheck),'indexBitConnected'),iBit))/2)))))));
                %disp(['iCheck =' num2str(iCheck)]);
                %disp(['iBit =' num2str(iBit)]);
                %disp(fpt(2*cell2mat(values(atanh_table,{product}))));
                msgch2b(iCheck, iBit) = fpt(2*cell2mat(values(atanh_table,{product})));
            end
        end
        messageBit = fpt(full(sum(msgch2b, 1) + messageChannel));
        % Hard decision, then exit or continue
        cHat(messageBit >= 0) = 0;
        cHat(messageBit < 0) = 1;
        if sum( mod(cHat * H', 2) ) == 0
            return;
        end
    end % for nIteration
    
end % fxn