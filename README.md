# Digital Modulation Techniquee, Signal Reconstruction and Decoding

## Contents
1. Double Side-Band Suppressed Carrier- Modulation and Demodulation
2. Signal Sampling and Reconstruction
3. Decoding using ANN
4. Delta Demodulator Implementation

## DSBSC Implementation
Utilisation of a product modulator at transmitting side to generate a DSBSC signal, and a coherent demodulator at the receiver end to accurately retreive the original signal in a noisy channel.
![dsbsc1](https://github.com/user-attachments/assets/4b640fce-11c8-4aaf-bdea-7429ccf84275)
The power spectrum of the above modulated signal shows 2 peaks at +f and -f frequencies.
![dsbsc2](https://github.com/user-attachments/assets/21753c94-328a-408b-9271-1aac80df52f1)  
Fourier Transform of the resulting modulated signal shows 4 peaks, 2 on either side. Each of the two peaks are at a distance of message frequency Fm from carrier frequency Fc on its sides.  
![dsbsc3](https://github.com/user-attachments/assets/8e861a40-dd58-4791-9d0e-fc4f68e24e73)  
It is observed that the demodulated signal, upon reconstruction, closely resembles the original signal in terms of their envelope.
![dsbsc5](https://github.com/user-attachments/assets/ec56c7fa-042c-4163-9cae-d9fbb3410ec8)

## Signal Sampling and Reconstruction
Continuous signals are sampled at discrete time intervals for signal processing. At the time of reconstruction, the signal is reconstructed completely with no aliasing at a frequency twice the 
maximum frequency component present (Nyquist criterion).
![ahp3a](https://github.com/user-attachments/assets/ea417dcf-4fbd-4d2e-a4b8-6b358f581bdd)
![ahp3b](https://github.com/user-attachments/assets/61a627c0-6ed9-47df-b65a-1af284f593d0)

## Decoding using ANN
![image](https://github.com/user-attachments/assets/c4ba57eb-f5f8-4d39-a9de-d07676beba87)  
After regenration of signal,  the clean pulses are regrouped into code words and decoded, or mapped back into a quantized PAM signal. Some of the particular decoding algorithms to look into are 
the Maximum Likelihood Decoding algorithm (ML decoding) and Maximum a-Posteriori Decoding algorithm (MAP decoding), which intensively uses decision rules to create ‘boundaries’ to distinguish a 1 
from a 0 from a AWGN channeled signal. The objective is to decode an encrypted signal having M symbols using an ANN model which has been trained accordingly, when prior probabilities of message symbols 
are unknown.  

Let us say Message Signal - [0 1 0 0 1 0 1 1 0 0]  
![image](https://github.com/user-attachments/assets/bc432463-6d53-4be5-9cf4-0813b5a9ce67)  
Let us say the receiver receives the following Signal - [[-1.00924005], [ 0.86617397], [-0.81576782], [1.15448636], [ 1.02225824], [1.12216999], [ 0.94402741], [ 0.98953712], [-0.96299824], [-0.91720862]]  
![image](https://github.com/user-attachments/assets/44b4cc1d-fb1b-4f36-97f2-2026a676d6fc)  
The ANN model is trained to accurately predict the symbols when we don't know the message signal's symbols a-priori.

