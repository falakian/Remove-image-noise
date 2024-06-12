# Remove-image-noise

The proposed algorithm is proposed to remove the salt and pepper noise and it works in such a way that it takes the image from the input and checks the pixels. If the pixel value is equal to 0 or 255, it is recognized as noise and a 3x3 kernel. It places pixels on it to check their neighbors. If all the pixels under the kernel are 0 or 255, it puts the average of the pixels under the kernel, but if all the pixels are not 0 or 255, it puts the values ​​under the kernel that are 0 or 255. It removes the pixels and puts the middle pixels in the output. It continues to do this until it checks the entire image. In the image below, you can see the block diagram of the algorithm.

![Screenshot 2024-06-12 234446](https://github.com/falakian/Remove-image-noise/assets/107622368/2a6049b9-21e5-44f3-9268-0926a0a66b4d)

Below you can see the result of comparing the noise removal algorithm with the middle kernel.

![Screenshot 2024-06-13 004601](https://github.com/falakian/Remove-image-noise/assets/107622368/dd751845-0993-4b09-bae1-e4e94a4cfc8a)
