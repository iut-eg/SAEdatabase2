#!/usr/bin/env python3
# -*- coding: utf-8 -*-
 
# SAE 2023
 
import numpy as np   
import matplotlib.pyplot as plt
import math
 
plt.close('all')
 
#---------------------------------------------------------------
 
data = np.genfromtxt('fichier_10', delimiter=';')
 
def moyenne(data):    
    n = len(data)
    moy = np.sum(data)/n
    return moy     
 
def variance(data):   
    var=moyenne(data**2)-moyenne(data)**2
    return var
     
def covariance(dataX,dataY):   
   cov=moyenne(dataX*dataY)-moyenne(dataX)*moyenne(dataY)
   return cov
 
def ecartType (data):
    ecart=math.sqrt(variance(data))
    return ecart
 
def correlation(dataX,dataY):
    corr = covariance(dataX, dataY) / (ecartType(dataX) * ecartType(dataY))
    return corr
 
def visu_histo(data, s):
    moy = moyenne(data)
    sig = np.sqrt(variance(data))
    # visualisation de l'histogramme :
    plt.figure()
    plt.hist(data, bins=20, density=True, edgecolor='k')
    plt.title('histogramme de %s , moy = %1.3f,  $\sigma$ = %1.3f' \
              % (s, moy, sig))
         
         
def visu_nuage_corr(dataX,dataY):
    # calcul de la covariance, de la corrélation et
    # visualisation du nuage des points (x,y)  
    covXY = covariance(dataX,dataY)
    corr = correlation(dataX,dataY)
    print('covariance = ', covXY)
    print('correlation = ', corr)
    print(' ')
    plt.figure()
    plt.plot(dataX, dataY, 'ro')  # color = 'red', marker = 'o'
    plt.xlabel('valeur de x')
    plt.ylabel('valeur de y')
    plt.title('correlation =  %1.3f' % corr) # f represents a float         
 
visu_nuage_corr(data[0],data[1])
visu_nuage_corr(data[0],data[2])
visu_nuage_corr(data[0],data[3])
visu_nuage_corr(data[1],data[2])
visu_nuage_corr(data[1],data[3])
visu_nuage_corr(data[2],data[3]) 

visu_histo(data[0],' ligne 1')