The code beginning by all the files I need to compute my work by the function read.table(). One of our goals is to merge the training and the testing datasets to obtain one global dataset to apply the mean & standard deviation.
Before merge the data with a combinaison of functions rbind + cbind, I rename all my columns to have understanding datasets.

please find below the instructions of the work :

You should create one R script called run_analysis.R that does the following.

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

My variables names : 

   V1        V2                V3                V4                V5
1 Result Volonteer tBodyAcc-mean()-X tBodyAcc-mean()-Y tBodyAcc-mean()-Z
                V6               V7               V8               V9              V10
1 tBodyAcc-std()-X tBodyAcc-std()-Y tBodyAcc-std()-Z tBodyAcc-mad()-X tBodyAcc-mad()-Y
               V11              V12              V13              V14              V15
1 tBodyAcc-mad()-Z tBodyAcc-max()-X tBodyAcc-max()-Y tBodyAcc-max()-Z tBodyAcc-min()-X
               V16              V17            V18                 V19
1 tBodyAcc-min()-Y tBodyAcc-min()-Z tBodyAcc-sma() tBodyAcc-energy()-X
                  V20                 V21              V22              V23
1 tBodyAcc-energy()-Y tBodyAcc-energy()-Z tBodyAcc-iqr()-X tBodyAcc-iqr()-Y
               V24                  V25                  V26                  V27
1 tBodyAcc-iqr()-Z tBodyAcc-entropy()-X tBodyAcc-entropy()-Y tBodyAcc-entropy()-Z
                     V28                    V29                    V30
1 tBodyAcc-arCoeff()-X,1 tBodyAcc-arCoeff()-X,2 tBodyAcc-arCoeff()-X,3
                     V31                    V32                    V33
1 tBodyAcc-arCoeff()-X,4 tBodyAcc-arCoeff()-Y,1 tBodyAcc-arCoeff()-Y,2
                     V34                    V35                    V36
1 tBodyAcc-arCoeff()-Y,3 tBodyAcc-arCoeff()-Y,4 tBodyAcc-arCoeff()-Z,1
                     V37                    V38                    V39
1 tBodyAcc-arCoeff()-Z,2 tBodyAcc-arCoeff()-Z,3 tBodyAcc-arCoeff()-Z,4
                         V40                        V41                        V42
1 tBodyAcc-correlation()-X,Y tBodyAcc-correlation()-X,Z tBodyAcc-correlation()-Y,Z
                   V43                  V44                  V45                 V46
1 tGravityAcc-mean()-X tGravityAcc-mean()-Y tGravityAcc-mean()-Z tGravityAcc-std()-X
                  V47                 V48                 V49                 V50
1 tGravityAcc-std()-Y tGravityAcc-std()-Z tGravityAcc-mad()-X tGravityAcc-mad()-Y
                  V51                 V52                 V53                 V54
1 tGravityAcc-mad()-Z tGravityAcc-max()-X tGravityAcc-max()-Y tGravityAcc-max()-Z
                  V55                 V56                 V57               V58
1 tGravityAcc-min()-X tGravityAcc-min()-Y tGravityAcc-min()-Z tGravityAcc-sma()
                     V59                    V60                    V61
1 tGravityAcc-energy()-X tGravityAcc-energy()-Y tGravityAcc-energy()-Z
                  V62                 V63                 V64                     V65
1 tGravityAcc-iqr()-X tGravityAcc-iqr()-Y tGravityAcc-iqr()-Z tGravityAcc-entropy()-X
                      V66                     V67                       V68
1 tGravityAcc-entropy()-Y tGravityAcc-entropy()-Z tGravityAcc-arCoeff()-X,1
                        V69                       V70                       V71
1 tGravityAcc-arCoeff()-X,2 tGravityAcc-arCoeff()-X,3 tGravityAcc-arCoeff()-X,4
                        V72                       V73                       V74
1 tGravityAcc-arCoeff()-Y,1 tGravityAcc-arCoeff()-Y,2 tGravityAcc-arCoeff()-Y,3
                        V75                       V76                       V77
1 tGravityAcc-arCoeff()-Y,4 tGravityAcc-arCoeff()-Z,1 tGravityAcc-arCoeff()-Z,2
                        V78                       V79                           V80
1 tGravityAcc-arCoeff()-Z,3 tGravityAcc-arCoeff()-Z,4 tGravityAcc-correlation()-X,Y
                            V81                           V82                   V83
1 tGravityAcc-correlation()-X,Z tGravityAcc-correlation()-Y,Z tBodyAccJerk-mean()-X
                    V84                   V85                  V86                  V87
1 tBodyAccJerk-mean()-Y tBodyAccJerk-mean()-Z tBodyAccJerk-std()-X tBodyAccJerk-std()-Y
                   V88                  V89                  V90                  V91
1 tBodyAccJerk-std()-Z tBodyAccJerk-mad()-X tBodyAccJerk-mad()-Y tBodyAccJerk-mad()-Z
                   V92                  V93                  V94                  V95
1 tBodyAccJerk-max()-X tBodyAccJerk-max()-Y tBodyAccJerk-max()-Z tBodyAccJerk-min()-X
                   V96                  V97                V98                     V99
1 tBodyAccJerk-min()-Y tBodyAccJerk-min()-Z tBodyAccJerk-sma() tBodyAccJerk-energy()-X
                     V100                    V101                 V102
1 tBodyAccJerk-energy()-Y tBodyAccJerk-energy()-Z tBodyAccJerk-iqr()-X
                  V103                 V104                     V105
1 tBodyAccJerk-iqr()-Y tBodyAccJerk-iqr()-Z tBodyAccJerk-entropy()-X
                      V106                     V107                       V108
1 tBodyAccJerk-entropy()-Y tBodyAccJerk-entropy()-Z tBodyAccJerk-arCoeff()-X,1
                        V109                       V110                       V111
1 tBodyAccJerk-arCoeff()-X,2 tBodyAccJerk-arCoeff()-X,3 tBodyAccJerk-arCoeff()-X,4
                        V112                       V113                       V114
1 tBodyAccJerk-arCoeff()-Y,1 tBodyAccJerk-arCoeff()-Y,2 tBodyAccJerk-arCoeff()-Y,3
                        V115                       V116                       V117
1 tBodyAccJerk-arCoeff()-Y,4 tBodyAccJerk-arCoeff()-Z,1 tBodyAccJerk-arCoeff()-Z,2
                        V118                       V119                           V120
1 tBodyAccJerk-arCoeff()-Z,3 tBodyAccJerk-arCoeff()-Z,4 tBodyAccJerk-correlation()-X,Y
                            V121                           V122               V123
1 tBodyAccJerk-correlation()-X,Z tBodyAccJerk-correlation()-Y,Z tBodyGyro-mean()-X
                V124               V125              V126              V127
1 tBodyGyro-mean()-Y tBodyGyro-mean()-Z tBodyGyro-std()-X tBodyGyro-std()-Y
               V128              V129              V130              V131
1 tBodyGyro-std()-Z tBodyGyro-mad()-X tBodyGyro-mad()-Y tBodyGyro-mad()-Z
               V132              V133              V134              V135
1 tBodyGyro-max()-X tBodyGyro-max()-Y tBodyGyro-max()-Z tBodyGyro-min()-X
               V136              V137            V138                 V139
1 tBodyGyro-min()-Y tBodyGyro-min()-Z tBodyGyro-sma() tBodyGyro-energy()-X
                  V140                 V141              V142              V143
1 tBodyGyro-energy()-Y tBodyGyro-energy()-Z tBodyGyro-iqr()-X tBodyGyro-iqr()-Y
               V144                  V145                  V146                  V147
1 tBodyGyro-iqr()-Z tBodyGyro-entropy()-X tBodyGyro-entropy()-Y tBodyGyro-entropy()-Z
                     V148                    V149                    V150
1 tBodyGyro-arCoeff()-X,1 tBodyGyro-arCoeff()-X,2 tBodyGyro-arCoeff()-X,3
                     V151                    V152                    V153
1 tBodyGyro-arCoeff()-X,4 tBodyGyro-arCoeff()-Y,1 tBodyGyro-arCoeff()-Y,2
                     V154                    V155                    V156
1 tBodyGyro-arCoeff()-Y,3 tBodyGyro-arCoeff()-Y,4 tBodyGyro-arCoeff()-Z,1
                     V157                    V158                    V159
1 tBodyGyro-arCoeff()-Z,2 tBodyGyro-arCoeff()-Z,3 tBodyGyro-arCoeff()-Z,4
                         V160                        V161                        V162
1 tBodyGyro-correlation()-X,Y tBodyGyro-correlation()-X,Z tBodyGyro-correlation()-Y,Z
                    V163                   V164                   V165
1 tBodyGyroJerk-mean()-X tBodyGyroJerk-mean()-Y tBodyGyroJerk-mean()-Z
                   V166                  V167                  V168
1 tBodyGyroJerk-std()-X tBodyGyroJerk-std()-Y tBodyGyroJerk-std()-Z
                   V169                  V170                  V171
1 tBodyGyroJerk-mad()-X tBodyGyroJerk-mad()-Y tBodyGyroJerk-mad()-Z
                   V172                  V173                  V174
1 tBodyGyroJerk-max()-X tBodyGyroJerk-max()-Y tBodyGyroJerk-max()-Z
                   V175                  V176                  V177                V178
1 tBodyGyroJerk-min()-X tBodyGyroJerk-min()-Y tBodyGyroJerk-min()-Z tBodyGyroJerk-sma()
                      V179                     V180                     V181
1 tBodyGyroJerk-energy()-X tBodyGyroJerk-energy()-Y tBodyGyroJerk-energy()-Z
                   V182                  V183                  V184
1 tBodyGyroJerk-iqr()-X tBodyGyroJerk-iqr()-Y tBodyGyroJerk-iqr()-Z
                       V185                      V186                      V187
1 tBodyGyroJerk-entropy()-X tBodyGyroJerk-entropy()-Y tBodyGyroJerk-entropy()-Z
                         V188                        V189                        V190
1 tBodyGyroJerk-arCoeff()-X,1 tBodyGyroJerk-arCoeff()-X,2 tBodyGyroJerk-arCoeff()-X,3
                         V191                        V192                        V193
1 tBodyGyroJerk-arCoeff()-X,4 tBodyGyroJerk-arCoeff()-Y,1 tBodyGyroJerk-arCoeff()-Y,2
                         V194                        V195                        V196
1 tBodyGyroJerk-arCoeff()-Y,3 tBodyGyroJerk-arCoeff()-Y,4 tBodyGyroJerk-arCoeff()-Z,1
                         V197                        V198                        V199
1 tBodyGyroJerk-arCoeff()-Z,2 tBodyGyroJerk-arCoeff()-Z,3 tBodyGyroJerk-arCoeff()-Z,4
                             V200                            V201
1 tBodyGyroJerk-correlation()-X,Y tBodyGyroJerk-correlation()-X,Z
                             V202               V203              V204
1 tBodyGyroJerk-correlation()-Y,Z tBodyAccMag-mean() tBodyAccMag-std()
               V205              V206              V207              V208
1 tBodyAccMag-mad() tBodyAccMag-max() tBodyAccMag-min() tBodyAccMag-sma()
                  V209              V210                  V211                   V212
1 tBodyAccMag-energy() tBodyAccMag-iqr() tBodyAccMag-entropy() tBodyAccMag-arCoeff()1
                    V213                   V214                   V215
1 tBodyAccMag-arCoeff()2 tBodyAccMag-arCoeff()3 tBodyAccMag-arCoeff()4
                   V216                 V217                 V218                 V219
1 tGravityAccMag-mean() tGravityAccMag-std() tGravityAccMag-mad() tGravityAccMag-max()
                  V220                 V221                    V222
1 tGravityAccMag-min() tGravityAccMag-sma() tGravityAccMag-energy()
                  V223                     V224                      V225
1 tGravityAccMag-iqr() tGravityAccMag-entropy() tGravityAccMag-arCoeff()1
                       V226                      V227                      V228
1 tGravityAccMag-arCoeff()2 tGravityAccMag-arCoeff()3 tGravityAccMag-arCoeff()4
                    V229                  V230                  V231
1 tBodyAccJerkMag-mean() tBodyAccJerkMag-std() tBodyAccJerkMag-mad()
                   V232                  V233                  V234
1 tBodyAccJerkMag-max() tBodyAccJerkMag-min() tBodyAccJerkMag-sma()
                      V235                  V236                      V237
1 tBodyAccJerkMag-energy() tBodyAccJerkMag-iqr() tBodyAccJerkMag-entropy()
                        V238                       V239                       V240
1 tBodyAccJerkMag-arCoeff()1 tBodyAccJerkMag-arCoeff()2 tBodyAccJerkMag-arCoeff()3
                        V241                V242               V243               V244
1 tBodyAccJerkMag-arCoeff()4 tBodyGyroMag-mean() tBodyGyroMag-std() tBodyGyroMag-mad()
                V245               V246               V247                  V248
1 tBodyGyroMag-max() tBodyGyroMag-min() tBodyGyroMag-sma() tBodyGyroMag-energy()
                V249                   V250                    V251
1 tBodyGyroMag-iqr() tBodyGyroMag-entropy() tBodyGyroMag-arCoeff()1
                     V252                    V253                    V254
1 tBodyGyroMag-arCoeff()2 tBodyGyroMag-arCoeff()3 tBodyGyroMag-arCoeff()4
                     V255                   V256                   V257
1 tBodyGyroJerkMag-mean() tBodyGyroJerkMag-std() tBodyGyroJerkMag-mad()
                    V258                   V259                   V260
1 tBodyGyroJerkMag-max() tBodyGyroJerkMag-min() tBodyGyroJerkMag-sma()
                       V261                   V262                       V263
1 tBodyGyroJerkMag-energy() tBodyGyroJerkMag-iqr() tBodyGyroJerkMag-entropy()
                         V264                        V265                        V266
1 tBodyGyroJerkMag-arCoeff()1 tBodyGyroJerkMag-arCoeff()2 tBodyGyroJerkMag-arCoeff()3
                         V267              V268              V269              V270
1 tBodyGyroJerkMag-arCoeff()4 fBodyAcc-mean()-X fBodyAcc-mean()-Y fBodyAcc-mean()-Z
              V271             V272             V273             V274             V275
1 fBodyAcc-std()-X fBodyAcc-std()-Y fBodyAcc-std()-Z fBodyAcc-mad()-X fBodyAcc-mad()-Y
              V276             V277             V278             V279             V280
1 fBodyAcc-mad()-Z fBodyAcc-max()-X fBodyAcc-max()-Y fBodyAcc-max()-Z fBodyAcc-min()-X
              V281             V282           V283                V284
1 fBodyAcc-min()-Y fBodyAcc-min()-Z fBodyAcc-sma() fBodyAcc-energy()-X
                 V285                V286             V287             V288
1 fBodyAcc-energy()-Y fBodyAcc-energy()-Z fBodyAcc-iqr()-X fBodyAcc-iqr()-Y
              V289                 V290                 V291                 V292
1 fBodyAcc-iqr()-Z fBodyAcc-entropy()-X fBodyAcc-entropy()-Y fBodyAcc-entropy()-Z
                V293               V294               V295                  V296
1 fBodyAcc-maxInds-X fBodyAcc-maxInds-Y fBodyAcc-maxInds-Z fBodyAcc-meanFreq()-X
                   V297                  V298                  V299
1 fBodyAcc-meanFreq()-Y fBodyAcc-meanFreq()-Z fBodyAcc-skewness()-X
                   V300                  V301                  V302
1 fBodyAcc-kurtosis()-X fBodyAcc-skewness()-Y fBodyAcc-kurtosis()-Y
                   V303                  V304                       V305
1 fBodyAcc-skewness()-Z fBodyAcc-kurtosis()-Z fBodyAcc-bandsEnergy()-1,8
                         V306                         V307                         V308
1 fBodyAcc-bandsEnergy()-9,16 fBodyAcc-bandsEnergy()-17,24 fBodyAcc-bandsEnergy()-25,32
                          V309                         V310
1 fBodyAcc-bandsEnergy()-33,40 fBodyAcc-bandsEnergy()-41,48
                          V311                         V312                        V313
1 fBodyAcc-bandsEnergy()-49,56 fBodyAcc-bandsEnergy()-57,64 fBodyAcc-bandsEnergy()-1,16
                          V314                         V315
1 fBodyAcc-bandsEnergy()-17,32 fBodyAcc-bandsEnergy()-33,48
                          V316                        V317                         V318
1 fBodyAcc-bandsEnergy()-49,64 fBodyAcc-bandsEnergy()-1,24 fBodyAcc-bandsEnergy()-25,48
                   V319                  V320                  V321
1 fBodyAccJerk-mean()-X fBodyAccJerk-mean()-Y fBodyAccJerk-mean()-Z
                  V322                 V323                 V324                 V325
1 fBodyAccJerk-std()-X fBodyAccJerk-std()-Y fBodyAccJerk-std()-Z fBodyAccJerk-mad()-X
                  V326                 V327                 V328                 V329
1 fBodyAccJerk-mad()-Y fBodyAccJerk-mad()-Z fBodyAccJerk-max()-X fBodyAccJerk-max()-Y
                  V330                 V331                 V332                 V333
1 fBodyAccJerk-max()-Z fBodyAccJerk-min()-X fBodyAccJerk-min()-Y fBodyAccJerk-min()-Z
                V334                    V335                    V336
1 fBodyAccJerk-sma() fBodyAccJerk-energy()-X fBodyAccJerk-energy()-Y
                     V337                 V338                 V339
1 fBodyAccJerk-energy()-Z fBodyAccJerk-iqr()-X fBodyAccJerk-iqr()-Y
                  V340                     V341                     V342
1 fBodyAccJerk-iqr()-Z fBodyAccJerk-entropy()-X fBodyAccJerk-entropy()-Y
                      V343                   V344                   V345
1 fBodyAccJerk-entropy()-Z fBodyAccJerk-maxInds-X fBodyAccJerk-maxInds-Y
                    V346                      V347                      V348
1 fBodyAccJerk-maxInds-Z fBodyAccJerk-meanFreq()-X fBodyAccJerk-meanFreq()-Y
                       V349                      V350                      V351
1 fBodyAccJerk-meanFreq()-Z fBodyAccJerk-skewness()-X fBodyAccJerk-kurtosis()-X
                       V352                      V353                      V354
1 fBodyAccJerk-skewness()-Y fBodyAccJerk-kurtosis()-Y fBodyAccJerk-skewness()-Z
                       V355                           V356
1 fBodyAccJerk-kurtosis()-Z fBodyAccJerk-bandsEnergy()-1,8
                             V357                             V358
1 fBodyAccJerk-bandsEnergy()-9,16 fBodyAccJerk-bandsEnergy()-17,24
                              V359                             V360
1 fBodyAccJerk-bandsEnergy()-25,32 fBodyAccJerk-bandsEnergy()-33,40
                              V361                             V362
1 fBodyAccJerk-bandsEnergy()-41,48 fBodyAccJerk-bandsEnergy()-49,56
                              V363                            V364
1 fBodyAccJerk-bandsEnergy()-57,64 fBodyAccJerk-bandsEnergy()-1,16
                              V365                             V366
1 fBodyAccJerk-bandsEnergy()-17,32 fBodyAccJerk-bandsEnergy()-33,48
                              V367                            V368
1 fBodyAccJerk-bandsEnergy()-49,64 fBodyAccJerk-bandsEnergy()-1,24
                              V369               V370               V371
1 fBodyAccJerk-bandsEnergy()-25,48 fBodyGyro-mean()-X fBodyGyro-mean()-Y
                V372              V373              V374              V375
1 fBodyGyro-mean()-Z fBodyGyro-std()-X fBodyGyro-std()-Y fBodyGyro-std()-Z
               V376              V377              V378              V379
1 fBodyGyro-mad()-X fBodyGyro-mad()-Y fBodyGyro-mad()-Z fBodyGyro-max()-X
               V380              V381              V382              V383
1 fBodyGyro-max()-Y fBodyGyro-max()-Z fBodyGyro-min()-X fBodyGyro-min()-Y
               V384            V385                 V386                 V387
1 fBodyGyro-min()-Z fBodyGyro-sma() fBodyGyro-energy()-X fBodyGyro-energy()-Y
                  V388              V389              V390              V391
1 fBodyGyro-energy()-Z fBodyGyro-iqr()-X fBodyGyro-iqr()-Y fBodyGyro-iqr()-Z
                   V392                  V393                  V394                V395
1 fBodyGyro-entropy()-X fBodyGyro-entropy()-Y fBodyGyro-entropy()-Z fBodyGyro-maxInds-X
                 V396                V397                   V398                   V399
1 fBodyGyro-maxInds-Y fBodyGyro-maxInds-Z fBodyGyro-meanFreq()-X fBodyGyro-meanFreq()-Y
                    V400                   V401                   V402
1 fBodyGyro-meanFreq()-Z fBodyGyro-skewness()-X fBodyGyro-kurtosis()-X
                    V403                   V404                   V405
1 fBodyGyro-skewness()-Y fBodyGyro-kurtosis()-Y fBodyGyro-skewness()-Z
                    V406                        V407                         V408
1 fBodyGyro-kurtosis()-Z fBodyGyro-bandsEnergy()-1,8 fBodyGyro-bandsEnergy()-9,16
                           V409                          V410
1 fBodyGyro-bandsEnergy()-17,24 fBodyGyro-bandsEnergy()-25,32
                           V411                          V412
1 fBodyGyro-bandsEnergy()-33,40 fBodyGyro-bandsEnergy()-41,48
                           V413                          V414
1 fBodyGyro-bandsEnergy()-49,56 fBodyGyro-bandsEnergy()-57,64
                          V415                          V416
1 fBodyGyro-bandsEnergy()-1,16 fBodyGyro-bandsEnergy()-17,32
                           V417                          V418
1 fBodyGyro-bandsEnergy()-33,48 fBodyGyro-bandsEnergy()-49,64
                          V419                          V420               V421
1 fBodyGyro-bandsEnergy()-1,24 fBodyGyro-bandsEnergy()-25,48 fBodyAccMag-mean()
               V422              V423              V424              V425
1 fBodyAccMag-std() fBodyAccMag-mad() fBodyAccMag-max() fBodyAccMag-min()
               V426                 V427              V428                  V429
1 fBodyAccMag-sma() fBodyAccMag-energy() fBodyAccMag-iqr() fBodyAccMag-entropy()
                 V430                   V431                   V432
1 fBodyAccMag-maxInds fBodyAccMag-meanFreq() fBodyAccMag-skewness()
                    V433                       V434                      V435
1 fBodyAccMag-kurtosis() fBodyBodyAccJerkMag-mean() fBodyBodyAccJerkMag-std()
                       V436                      V437                      V438
1 fBodyBodyAccJerkMag-mad() fBodyBodyAccJerkMag-max() fBodyBodyAccJerkMag-min()
                       V439                         V440                      V441
1 fBodyBodyAccJerkMag-sma() fBodyBodyAccJerkMag-energy() fBodyBodyAccJerkMag-iqr()
                           V442                        V443
1 fBodyBodyAccJerkMag-entropy() fBodyBodyAccJerkMag-maxInds
                            V444                           V445
1 fBodyBodyAccJerkMag-meanFreq() fBodyBodyAccJerkMag-skewness()
                            V446                    V447                   V448
1 fBodyBodyAccJerkMag-kurtosis() fBodyBodyGyroMag-mean() fBodyBodyGyroMag-std()
                    V449                   V450                   V451
1 fBodyBodyGyroMag-mad() fBodyBodyGyroMag-max() fBodyBodyGyroMag-min()
                    V452                      V453                   V454
1 fBodyBodyGyroMag-sma() fBodyBodyGyroMag-energy() fBodyBodyGyroMag-iqr()
                        V455                     V456                        V457
1 fBodyBodyGyroMag-entropy() fBodyBodyGyroMag-maxInds fBodyBodyGyroMag-meanFreq()
                         V458                        V459                        V460
1 fBodyBodyGyroMag-skewness() fBodyBodyGyroMag-kurtosis() fBodyBodyGyroJerkMag-mean()
                        V461                       V462                       V463
1 fBodyBodyGyroJerkMag-std() fBodyBodyGyroJerkMag-mad() fBodyBodyGyroJerkMag-max()
                        V464                       V465                          V466
1 fBodyBodyGyroJerkMag-min() fBodyBodyGyroJerkMag-sma() fBodyBodyGyroJerkMag-energy()
                        V467                           V468
1 fBodyBodyGyroJerkMag-iqr() fBodyBodyGyroJerkMag-entropy()
                          V469                            V470
1 fBodyBodyGyroJerkMag-maxInds fBodyBodyGyroJerkMag-meanFreq()
                             V471                            V472
1 fBodyBodyGyroJerkMag-skewness() fBodyBodyGyroJerkMag-kurtosis()
                         V473                                 V474
1 angle(tBodyAccMean,gravity) angle(tBodyAccJerkMean),gravityMean)
                              V475                                 V476
1 angle(tBodyGyroMean,gravityMean) angle(tBodyGyroJerkMean,gravityMean)
                  V477                 V478                 V479
1 angle(X,gravityMean) angle(Y,gravityMean) angle(Z,gravityMean)
