# Denoising
##### This is Denoising algorithm for   ***Salt & pepper***  noise

In image processing , image denoising is one of the most important processing task to improve image quality.
Here we talk about a known noise named salt and pepper noise.
There are many algorithms to omit salt and pepper nois such as avrage Kernel, Gussian Kernel and Median Kernel filtering.
Here i have proposed my own algorithm for omiting this kind of noise and i have compared the PSNR value of outcome image with original image with Median filter algorithm.
My own algorithm consists of two steps:
- Noise detecting : in first step i have used variable Kernel size for detecting noise.first i use 3 * 3 kernel size and if the median of elements of kernel is also noise i get the 5  * 5 kernel size and if it stil can not find non-noisy pixel i try 7 * 7 one.
- average step: at last if there is stil white or black pixel i use 19*19 kernel to calculate average of pixels under kernel for the value of that pixel.

So Here i use 3 known image in this field to compare my PSNR results with Matlab Default Median filter for some valuses of noise and results of the comparison are below:


### PSNR values for Median filter

|  |   10% noise     |  50 % noise      | 90% noise |
| ------  | ------ | ------ | ------ | 
| Bridge | 26/4718  | 14/6654  | 6/4606  |
| Boat | 29/5183 | 15/1010 | 6/6527  |
| Peppers | 33/1127 | 15/0601 | 6/4915 |



### PSNR values for Myown filter

|  |   10% noise     |  50 % noise      | 90% noise |
| ------  | ------ | ------ | ------ | 
| Bridge | 33/5674  | 24/7406  | 19/0427  |
| Boat | 36/2747 | 26/9578 |20/7695  |
| Peppers | 39/1224 | 28/8328 | 21/8939 |

