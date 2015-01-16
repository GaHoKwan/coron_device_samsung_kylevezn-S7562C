.class public Lcom/sec/android/hardware/SecHardwareInterface;
.super Ljava/lang/Object;
.source "SecHardwareInterface.java"


# static fields
.field public static final BROWSER:I = 0x4

.field public static final CALL:I = 0x1

.field public static final CAMERA:I = 0x6

.field private static final DAEMON_SOCKET:Ljava/lang/String; = "pps"

.field private static EPEN_SAVINGMODE_PATH:Ljava/lang/String; = null

.field private static EPEN_TYPE_PATH:Ljava/lang/String; = null

.field public static final HOTSPOT:I = 0x5

.field private static final MAX_CMD_LEN:I = 0x64

.field public static final MDNIE_CAMERA_MODE:I = 0x4

.field public static final MDNIE_COLOR_TONE_1:I = 0x28

.field public static final MDNIE_COLOR_TONE_2:I = 0x29

.field public static final MDNIE_COLOR_TONE_3:I = 0x2a

.field public static final MDNIE_GALLERY_MODE:I = 0x6

.field public static final MDNIE_NAVI_MODE:I = 0x5

.field public static final MDNIE_UI_MODE:I = 0x0

.field public static final MDNIE_VIDEO_COLD_MODE:I = 0x3

.field public static final MDNIE_VIDEO_MODE:I = 0x1

.field public static final MDNIE_VIDEO_WARM_MODE:I = 0x2

.field public static final MDNIE_VT_MODE:I = 0x7

.field public static final MUSIC:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SecHardwareInterface"

.field public static final TORCH_BRIGHTNESS_MAX:I = 0x1

.field public static final TORCH_BRIGHTNESS_MIN:I = 0xe

.field public static final TORCH_BRIGHTNESS_OFF:I = 0x0

.field public static final TORCH_BRIGHTNESS_STANDARD:I = 0x6

.field public static final VIDEO:I = 0x2

.field private static daemonSock:Landroid/net/LocalSocket;

.field private static in:Ljava/io/InputStream;

.field private static isCabcDaemonConnected:Z

.field private static out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    .line 128
    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    .line 129
    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->daemonSock:Landroid/net/LocalSocket;

    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    .line 459
    const-string v0, "/sys/class/sec/sec_epen/epen_type"

    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    .line 497
    const-string v0, "/sys/class/sec/sec_epen/epen_saving_mode"

    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_SAVINGMODE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private static CabcDaemonConnect()V
    .locals 4

    .prologue
    .line 138
    const-string v2, "SecHardwareInterface"

    const-string v3, "CabcDaemonConnect ()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :try_start_0
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    sput-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->daemonSock:Landroid/net/LocalSocket;

    .line 142
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v2, "pps"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 144
    .local v0, address:Landroid/net/LocalSocketAddress;
    sget-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->daemonSock:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 145
    sget-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->daemonSock:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    sput-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    .line 146
    sget-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->daemonSock:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    sput-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    .line 147
    sget-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    .line 148
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string v2, "SecHardwareInterface"

    const-string v3, "CabcDaemonConnect () - error getting streams"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static CablDaemonControl(Ljava/lang/String;)V
    .locals 8
    .parameter "cmd"

    .prologue
    const/4 v7, 0x0

    .line 160
    sget-object v5, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    if-eqz v5, :cond_0

    .line 162
    :try_start_0
    const-string v5, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CablDaemonControl ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 166
    .local v4, send_buf:[B
    sget-object v5, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 167
    sget-object v5, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 170
    const/16 v5, 0x64

    new-array v2, v5, [B

    .line 171
    .local v2, recv_buf:[B
    sget-object v5, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    const/4 v6, 0x0

    array-length v7, v2

    invoke-virtual {v5, v2, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 172
    .local v1, len:I
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v1}, Ljava/lang/String;-><init>([BII)V

    .line 174
    .local v3, response:Ljava/lang/String;
    const-string v5, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CablDaemonControl ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): response = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v1           #len:I
    .end local v2           #recv_buf:[B
    .end local v3           #response:Ljava/lang/String;
    .end local v4           #send_buf:[B
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 180
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const-string v5, "SecHardwareInterface"

    const-string v6, "CablDaemonControl: streams null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sput-boolean v7, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    goto :goto_0
.end method

.method private static IsCabcDaemonConnected()Z
    .locals 3

    .prologue
    .line 133
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsCabcDaemonConnected() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-boolean v0, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    return v0
.end method

.method public static getEPenType()I
    .locals 10

    .prologue
    const/4 v6, -0x1

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v5, -0x1

    .line 473
    .local v5, type:I
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    sget-object v9, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 480
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v5

    .line 487
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_0
    move v6, v5

    .line 492
    .end local v0           #br:Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return v6

    .line 475
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 476
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 488
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 489
    .local v3, ee:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 481
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #ee:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_2
    move-exception v4

    .line 482
    .local v4, ne:Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 483
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 488
    .end local v4           #ne:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v3

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static setAmoledACL(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 194
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmoledACL ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public static setAmoledVideoGamma(Z)Z
    .locals 3
    .parameter "videomode"

    .prologue
    .line 186
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmoledACL ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public static setBatteryADC(Ljava/lang/String;Z)V
    .locals 9
    .parameter "app"
    .parameter "enable"

    .prologue
    .line 278
    const/4 v5, 0x0

    .line 283
    .local v5, path:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sys/class/power_supply/battery/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 285
    const-string v7, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBatteryADC path = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_0

    const-string v6, "true"

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v3, 0x0

    .line 289
    .local v3, out:Ljava/io/OutputStream;
    const/16 v6, 0x64

    :try_start_0
    new-array v0, v6, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    .local v0, buffer:[B
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    .end local v3           #out:Ljava/io/OutputStream;
    .local v4, out:Ljava/io/OutputStream;
    if-eqz p1, :cond_1

    .line 299
    const/4 v6, 0x0

    const/16 v7, 0x31

    :try_start_2
    aput-byte v7, v0, v6

    .line 303
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 304
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 313
    .end local v0           #buffer:[B
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :goto_2
    return-void

    .line 285
    .end local v3           #out:Ljava/io/OutputStream;
    :cond_0
    const-string v6, "false"

    goto :goto_0

    .line 293
    .restart local v0       #buffer:[B
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 294
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 305
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 306
    .local v1, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 308
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 309
    :catch_2
    move-exception v2

    .line 310
    .local v2, err:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 301
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #err:Ljava/lang/Exception;
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #out:Ljava/io/OutputStream;
    :cond_1
    const/4 v6, 0x0

    const/16 v7, 0x30

    :try_start_5
    aput-byte v7, v0, v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 305
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_3
.end method

.method public static setBatteryUse(IZ)V
    .locals 2
    .parameter "module"
    .parameter "enable"

    .prologue
    .line 60
    packed-switch p0, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 62
    :pswitch_0
    :try_start_0
    const-string v1, "call"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    const-string v1, "video"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_0

    .line 68
    :pswitch_2
    const-string v1, "music"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_0

    .line 71
    :pswitch_3
    const-string v1, "browser"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_0

    .line 74
    :pswitch_4
    const-string v1, "hotspot"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_0

    .line 77
    :pswitch_5
    const-string v1, "camera"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static setEPenSavingmode(I)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 500
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEPenSavingmode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    sget-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_SAVINGMODE_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setEPenType(I)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 462
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEPentype to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    sget-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setEpenHandType(I)V
    .locals 8
    .parameter "handtype"

    .prologue
    .line 431
    const-string v4, "/sys/class/sec/sec_epen/epen_hand"

    .line 432
    .local v4, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 434
    .local v2, out:Ljava/io/OutputStream;
    const-string v5, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setHandType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 443
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    if-nez p0, :cond_1

    .line 444
    const/16 v5, 0x30

    :try_start_1
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 447
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 456
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 448
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 449
    .local v0, e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 451
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 452
    :catch_2
    move-exception v1

    .line 453
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 445
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :cond_1
    const/4 v5, 0x1

    if-ne p0, v5, :cond_0

    .line 446
    const/16 v5, 0x31

    :try_start_4
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 448
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static setMaxCPUFreq(Ljava/lang/String;)V
    .locals 8
    .parameter "max_freq"

    .prologue
    .line 322
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    .line 323
    .local v4, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 325
    .local v2, out:Ljava/io/OutputStream;
    const-string v5, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMaxCPUFreq: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 334
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 335
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 344
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 336
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 337
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 339
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 340
    :catch_2
    move-exception v1

    .line 341
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 336
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static setPlayVideoSpeed(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 260
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayVideoSpeed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public static setPowerSaveFPS(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 316
    const-string v1, "SecHardwareInterface"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerSaveFPS ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v1, "pwr.powersave_fps"

    if-eqz p0, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void

    .line 316
    :cond_0
    const-string v0, "false"

    goto :goto_0

    .line 318
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method public static setTorchLight(I)V
    .locals 10
    .parameter "level"

    .prologue
    .line 376
    const-string v7, "SecHardwareInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setTorchLight (level = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v2, 0x0

    .line 379
    .local v2, fw:Ljava/io/FileWriter;
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 383
    .local v5, modelname:Ljava/lang/String;
    const-string v7, "GT-N7000"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "GT-N7000B"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "GT-I9220"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 384
    :cond_0
    const-string v7, "SecHardwareInterface"

    const-string v8, "Torch path is sys/class/leds/leds-sec/brightness"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v6, "sys/class/leds/leds-sec/brightness"

    .line 398
    .local v6, path:Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v1, fl:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 400
    const-string v6, "sys/class/camera/rear/rear_flash"

    .line 402
    :cond_1
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 404
    .end local v2           #fw:Ljava/io/FileWriter;
    .local v3, fw:Ljava/io/FileWriter;
    if-lez p0, :cond_6

    const/16 v7, 0xf

    if-ge p0, v7, :cond_6

    .line 405
    :try_start_1
    const-string v7, "SecHardwareInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "torch on level = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, lLevel:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 420
    .end local v4           #lLevel:Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_9

    .line 422
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v2, v3

    .line 428
    .end local v1           #fl:Ljava/io/File;
    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :cond_2
    :goto_2
    return-void

    .line 386
    .end local v6           #path:Ljava/lang/String;
    :cond_3
    const-string v7, "SHV-E160S"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "SHV-E160K"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "SHV-E160L"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "SC-05D"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 390
    :cond_4
    const-string v7, "SecHardwareInterface"

    const-string v8, "Torch path is /sys/class/ledflash/sec_ledflash/torch"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v6, "/sys/class/ledflash/sec_ledflash/torch"

    .restart local v6       #path:Ljava/lang/String;
    goto :goto_0

    .line 393
    .end local v6           #path:Ljava/lang/String;
    :cond_5
    const-string v7, "SecHardwareInterface"

    const-string v8, "Torch path is sys/class/camera/flash/rear_flash"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v6, "sys/class/camera/flash/rear_flash"

    .restart local v6       #path:Ljava/lang/String;
    goto :goto_0

    .line 408
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fl:Ljava/io/File;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :cond_6
    if-nez p0, :cond_7

    .line 409
    :try_start_3
    const-string v7, "SecHardwareInterface"

    const-string v8, "torch off"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 415
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 416
    .end local v1           #fl:Ljava/io/File;
    .end local v3           #fw:Ljava/io/FileWriter;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 420
    if-eqz v2, :cond_2

    .line 422
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 423
    :catch_1
    move-exception v0

    .line 424
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 412
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fl:Ljava/io/File;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :cond_7
    :try_start_6
    const-string v7, "SecHardwareInterface"

    const-string v8, "This brightness level does not support. the torch off is set"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 417
    :catch_2
    move-exception v0

    move-object v2, v3

    .line 418
    .end local v1           #fl:Ljava/io/File;
    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v0       #e:Ljava/io/IOException;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 420
    if-eqz v2, :cond_2

    .line 422
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 423
    :catch_3
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 423
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fl:Ljava/io/File;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    .line 424
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v3

    .line 425
    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_2

    .line 420
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fl:Ljava/io/File;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v2, :cond_8

    .line 422
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 425
    :cond_8
    :goto_6
    throw v7

    .line 423
    :catch_5
    move-exception v0

    .line 424
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 420
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fl:Ljava/io/File;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_5

    .line 417
    .end local v1           #fl:Ljava/io/File;
    :catch_6
    move-exception v0

    goto :goto_4

    .line 415
    :catch_7
    move-exception v0

    goto :goto_3

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fl:Ljava/io/File;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :cond_9
    move-object v2, v3

    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto/16 :goto_2
.end method

.method public static setTorchLight(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 354
    if-eqz p0, :cond_0

    .line 355
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    goto :goto_0
.end method

.method public static setTouchJitterFilter(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 268
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTouchJitterFilter ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public static setmDNIeNegative(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 243
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setmDNIeNegative ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public static setmDNIeOutDoor(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 235
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setmDNIeOutDoor ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public static setmDNIeReadingMode(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 251
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setmDNIeReadingMode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public static setmDNIeUIMode(I)Z
    .locals 3
    .parameter "mode"

    .prologue
    .line 219
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setmDNIeUIMode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public static setmDNIeUserMode(I)Z
    .locals 3
    .parameter "mode"

    .prologue
    .line 227
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setmDNIeUserMode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .locals 6
    .parameter "sysfs"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 100
    const/4 v2, 0x0

    .line 104
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 111
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 122
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 112
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 113
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 116
    :catch_2
    move-exception v1

    .line 117
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 112
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
