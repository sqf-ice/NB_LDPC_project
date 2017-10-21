#include "stdio.h"
#include "stdlib.h"
 

void transpose(float *m, float *res, size_t r, size_t c){
	for(size_t i = 0; i < c; i++){
		for(size_t j = 0; j < r; j++){
			*(res+j+i*r) = *(m+j*c+i);
		}
	}
}


void matrix_multip(float *m1, float *m2, float *m_prod, size_t dim1, size_t dim2, size_t dim3){
	for(size_t i = 0; i < dim3; ++i){
		for(size_t j = 0; j < dim1; j++){
			*(m_prod+i+j*dim3) = 0;
			for(size_t k = 0; k < dim2; k++){
				*(m_prod+i+j*dim3) += *(m1+k+j*dim2) * *(m2+k*dim3+i);
			}
		}
	}
}

// Performance Suggestion: do it by check eq by check eq for checking a valid codeword and terminate after the first one that doesn't check
/*void matrix_multip_q4(unsigned int *m1, unsigned int *m2, unsigned int *m_prod, size_t dim1, size_t dim2){
	unsigned int m_prod_broadcast[dim1*dim2];

		for(size_t j = 0; j < dim2; j++){
			for(size_t k = 0; k < dim1; k++){
				//*(m_prod+i+j*dim3) = *(m1+k) * *(m2+k*dim3);
				//printf("%.3f", *(m1+k+j*dim2) * *(m2+k*dim3+i));
				//printf("\n");
				switch(*(m1+k*dim2+j) * *(m2+j)){
					case 9:
						*(m_prod_broadcast+k*dim2+j) = 2;
						break;
					case 6:
						*(m_prod_broadcast+k*dim2+j) = 1;
						break;
					case 4:
						*(m_prod_broadcast+k*dim2+j) = 3;
						break;
					default:
						*(m_prod_broadcast+k*dim2+j) = *(m1+k*dim2+j) * *(m2+j);
						break;
				}
			}
		}
}*/


void matrix_multip_q4(unsigned int *m1, unsigned int *m2, unsigned int *m_prod, size_t dim1, size_t dim2){
	for(size_t j = 0; j < dim1; j++){
		*(m_prod+j) = 0;
		for(size_t i = 0; i < dim2; i++){
			switch(*(m1+i+j*dim2) * *(m2+i)){
				case 9:
					*(m_prod+j) += 2;
					break;
				case 6:
					*(m_prod+j) += 1;
					break;
				case 4:
					*(m_prod+j) += 3;
					break;
				default:
					*(m_prod+j) += *(m1+i+j*dim2) * *(m2+i);
					break;
			}
		}
		*(m_prod+j) = *(m_prod+j)%4;
	}
}


unsigned int is_valid_cw_q4(unsigned int *m1, unsigned int *m2, unsigned int *m_prod, size_t dim1, size_t dim2){
	for(size_t j = 0; j < dim1; j++){
		*(m_prod+j) = 0;
		for(size_t i = 0; i < dim2; i++){
			switch(*(m1+i+j*dim2) * *(m2+i)){
				case 9:
					*(m_prod+j) += 2;
					break;
				case 6:
					*(m_prod+j) += 1;
					break;
				case 4:
					*(m_prod+j) += 3;
					break;
				default:
					*(m_prod+j) += *(m1+i+j*dim2) * *(m2+i);
					break;
			}
		}
		if(*(m_prod+j)%4 != 0){
			return 1;
		}
	}
	return 0;
}


void parse_MacKay_NB(char matrix_file[], unsigned int *matrix, unsigned int k, unsigned int n){
	FILE *file;
	file = fopen(matrix_file, "r");
}


void play_scanf(char *mat_out){
	FILE *file;
	file = fopen("scan_test.txt", "r");
	//printf("%i", file);
	if(file == NULL){
		printf("Error in file opening\n");
	}
	fscanf(file, "%2s", mat_out[0], mat_out[4], mat_out[8], mat_out[12]);
}

/*
void generate_cw_and_LLR_AWGN(float *LLRs, float *cw, float stdev, unsigned int q, unsigned int *G_t){
	user_data
}*/


void vr_to_cn_msgs_init(unsigned int *H, float *LLR_init, size_t H_r, size_t H_c, float *vr_to_cn_msgs){
	for(size_t i = 0; i < H_c; i++){
		*(vr_to_cn_msgs+i*H_r) = *(LLR_init+i);
	}

}

/*
void decode(unsigned int *H, float *LLR_init, unsigned int max_iter){

}*/


int main()
{
	float m1[6] = {1,2,4,5,3,2};

	float m2[9] = {2,3,1,1,2,3,0,1,0};
	float m3[6] = {2,2,3,4,2,3};

	unsigned int m6[9] = {2,3,1,1,2,3,0,1,0};
	unsigned int cw[3] = {1,0,3};
	unsigned int m7[3];

	size_t col = 3;
	size_t row = 3;

	size_t d1 = 3;
	size_t d2 = 3;
	size_t d3 = 2;

	float m4[6];
	float m5[6];

	transpose(m2, m4, row, col);
	matrix_multip(m2,m3,m5,d1,d2,d3);
	matrix_multip_q4(m6,cw,m7, 3, 3);

	/*for(int i=0; i<9; i++){
		printf("%u", m7[i]);
		printf("\n");
	}*/
	char mat_tes[16];
	play_scanf(mat_tes);
	/*for(int i=0; i<16; i++){
		printf("%u", mat_tes[i]);
		printf("\n");
	}*/

	return 0;
}
