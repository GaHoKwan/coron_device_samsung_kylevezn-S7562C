.class public Lcom/android/phone/FileWriteThread;
.super Ljava/lang/Thread;
.source "FileWriteThread.java"


# static fields
.field private static sDataConnectState:I


# instance fields
.field private fosSleepCheck:Ljava/io/FileOutputStream;

.field private mCallOff:Ljava/lang/String;

.field private mCallOn:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mThreadType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/FileWriteThread;->sDataConnectState:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "threadType"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 54
    const-string v0, "/sys/class/sec/sec_key/"

    iput-object v0, p0, Lcom/android/phone/FileWriteThread;->mFilePath:Ljava/lang/String;

    .line 56
    const-string v0, "wakeup_keys"

    iput-object v0, p0, Lcom/android/phone/FileWriteThread;->mFileName:Ljava/lang/String;

    .line 58
    const-string v0, "102,114,115,116,172"

    iput-object v0, p0, Lcom/android/phone/FileWriteThread;->mCallOn:Ljava/lang/String;

    .line 60
    const-string v0, "102,116,172"

    iput-object v0, p0, Lcom/android/phone/FileWriteThread;->mCallOff:Ljava/lang/String;

    .line 64
    const-string v0, "FileWriteThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileWriteThread : threadType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 65
    iput p1, p0, Lcom/android/phone/FileWriteThread;->mThreadType:I

    .line 66
    return-void
.end method

.method private chargingCutOff()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 150
    const-string v6, "gsm.network.type"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, netType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 154
    .local v2, fos:Ljava/io/FileOutputStream;
    if-eqz v4, :cond_2

    .line 155
    :try_start_0
    const-string v6, "GPRS:1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "EDGE:2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "GSM:16"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "Unexpected:16"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 157
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v6, "/sys/class/power_supply/battery/talk_gsm"

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 161
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_0
    const/16 v5, 0x30

    .line 163
    .local v5, voice_state:B
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v6, v7, :cond_1

    .line 164
    const/16 v5, 0x31

    .line 166
    :cond_1
    const-string v6, "FileWriteThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : voice_call = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 167
    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 168
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    .end local v5           #voice_state:B
    :cond_2
    if-eqz v2, :cond_3

    .line 181
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    :cond_3
    :goto_1
    return-void

    .line 159
    :cond_4
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v6, "/sys/class/power_supply/battery/talk_wcdma"

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, ex:Ljava/io/IOException;
    const-string v6, "FileWriteThread"

    const-string v7, "2nd close fail!!!"

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    .line 170
    .end local v1           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "FileWriteThread"

    const-string v7, "voice_call write error, exec orig."

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    if-eqz v2, :cond_5

    .line 174
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 180
    :cond_5
    :goto_2
    if-eqz v2, :cond_3

    .line 181
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 182
    :catch_2
    move-exception v1

    .line 183
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v6, "FileWriteThread"

    const-string v7, "2nd close fail!!!"

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    .line 175
    .end local v1           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 176
    .restart local v1       #ex:Ljava/io/IOException;
    :try_start_6
    const-string v6, "FileWriteThread"

    const-string v7, "1st close fail!!!"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 179
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 180
    if-eqz v2, :cond_6

    .line 181
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 184
    :cond_6
    :goto_3
    throw v6

    .line 182
    :catch_4
    move-exception v1

    .line 183
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v7, "FileWriteThread"

    const-string v8, "2nd close fail!!!"

    invoke-static {v7, v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_3
.end method

.method private closeFile()V
    .locals 2

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private dataChargingCutOff(Z)V
    .locals 9
    .parameter "isConnected"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 189
    sget v8, Lcom/android/phone/FileWriteThread;->sDataConnectState:I

    if-ne p1, v5, :cond_1

    move v7, v5

    :goto_0
    if-ne v8, v7, :cond_2

    .line 190
    const-string v5, "FileWriteThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dataChargingCutOff : skip same state - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v7, v6

    .line 189
    goto :goto_0

    .line 194
    :cond_2
    if-ne p1, v5, :cond_5

    :goto_2
    sput v5, Lcom/android/phone/FileWriteThread;->sDataConnectState:I

    .line 196
    const/4 v3, 0x0

    .line 198
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/power_supply/battery/data_call"

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    const/16 v0, 0x30

    .line 201
    .local v0, data_state:B
    if-eqz p1, :cond_3

    .line 202
    const/16 v0, 0x31

    .line 205
    :cond_3
    :try_start_1
    const-string v5, "FileWriteThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dataChargingCutOff : data_call = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 206
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 207
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 218
    if-eqz v4, :cond_4

    .line 219
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v3, v4

    .line 222
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #data_state:B
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_5
    move v5, v6

    .line 194
    goto :goto_2

    .line 220
    .restart local v0       #data_state:B
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 221
    .local v2, ex:Ljava/io/IOException;
    const-string v5, "FileWriteThread"

    const-string v6, "close fail!!!"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 223
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 208
    .end local v0           #data_state:B
    .end local v2           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 209
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string v5, "FileWriteThread"

    const-string v6, "dataChargingCutOff : data_call write error, exec orig."

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 211
    if-eqz v3, :cond_6

    .line 212
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 218
    :cond_6
    :goto_4
    if-eqz v3, :cond_0

    .line 219
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 220
    :catch_2
    move-exception v2

    .line 221
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v5, "FileWriteThread"

    const-string v6, "close fail!!!"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 213
    .end local v2           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 214
    .restart local v2       #ex:Ljava/io/IOException;
    :try_start_6
    const-string v5, "FileWriteThread"

    const-string v6, "close fail!!!"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 217
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 218
    :goto_5
    if-eqz v3, :cond_7

    .line 219
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 222
    :cond_7
    :goto_6
    throw v5

    .line 220
    :catch_4
    move-exception v2

    .line 221
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v6, "FileWriteThread"

    const-string v7, "close fail!!!"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 217
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #data_state:B
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 208
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 251
    const-string v0, "FileWriteThread"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method private openFile()V
    .locals 4

    .prologue
    .line 105
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/phone/FileWriteThread;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/FileWriteThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, fileSleepCheck:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    :goto_1
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 120
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private writeFile(Z)V
    .locals 4
    .parameter "duringCall"

    .prologue
    .line 136
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/phone/FileWriteThread;->mCallOn:Ljava/lang/String;

    .line 137
    .local v1, value:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFile: value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/FileWriteThread;->log(Ljava/lang/String;)V

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_0

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFile: data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/FileWriteThread;->log(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_1
    return-void

    .line 136
    .end local v1           #value:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/FileWriteThread;->mCallOff:Ljava/lang/String;

    goto :goto_0

    .line 144
    .restart local v1       #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method init()V
    .locals 2

    .prologue
    .line 69
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, platform:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "exynos4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const-string v1, "/sys/class/sec/sec_key/"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mFilePath:Ljava/lang/String;

    .line 73
    const-string v1, "wakeup_keys"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mFileName:Ljava/lang/String;

    .line 75
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    const-string v1, "102,114,115,116,172,107"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mCallOn:Ljava/lang/String;

    .line 77
    const-string v1, "102,116,172,107"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mCallOff:Ljava/lang/String;

    .line 83
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "msm8960"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    const-string v1, "/sys/class/sec/sec_key/"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mFilePath:Ljava/lang/String;

    .line 85
    const-string v1, "wakeup_keys"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mFileName:Ljava/lang/String;

    .line 86
    const-string v1, "114,115,172"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mCallOn:Ljava/lang/String;

    .line 87
    const-string v1, "172"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mCallOff:Ljava/lang/String;

    .line 89
    :cond_1
    return-void

    .line 79
    :cond_2
    const-string v1, "102,114,115,116,172"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mCallOn:Ljava/lang/String;

    .line 80
    const-string v1, "102,116,172"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mCallOff:Ljava/lang/String;

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/android/phone/FileWriteThread;->mThreadType:I

    packed-switch v0, :pswitch_data_0

    .line 248
    :goto_0
    return-void

    .line 229
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/FileWriteThread;->init()V

    .line 230
    invoke-virtual {p0}, Lcom/android/phone/FileWriteThread;->writeSleepCheckingFile()V

    goto :goto_0

    .line 234
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/FileWriteThread;->chargingCutOff()V

    goto :goto_0

    .line 238
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/FileWriteThread;->dataChargingCutOff(Z)V

    goto :goto_0

    .line 242
    :pswitch_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/FileWriteThread;->dataChargingCutOff(Z)V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method writeSleepCheckingFile()V
    .locals 4

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, duringCall:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 94
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    invoke-direct {p0}, Lcom/android/phone/FileWriteThread;->openFile()V

    .line 95
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_0

    .line 96
    const/4 v0, 0x1

    .line 98
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/FileWriteThread;->writeFile(Z)V

    .line 99
    invoke-direct {p0}, Lcom/android/phone/FileWriteThread;->closeFile()V

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeSleepCheckingFile end : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/FileWriteThread;->log(Ljava/lang/String;)V

    .line 102
    return-void
.end method
