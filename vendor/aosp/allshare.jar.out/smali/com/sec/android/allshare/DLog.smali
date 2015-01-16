.class public final Lcom/sec/android/allshare/DLog;
.super Ljava/lang/Object;
.source "DLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/DLog$AddressChecker;
    }
.end annotation


# static fields
.field private static API_VERSION:Ljava/lang/String; = null

.field public static final MAIN_DEV_TAG:Ljava/lang/String; = "AllShare(ASF)"

.field private static final PREFIX:Ljava/lang/String; = " catched for ASF:: "

.field private static SECURE_DEV_MODE:Z

.field private static SVN_VERSION:Ljava/lang/String;

.field private static TAG_API:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "API - "

    sput-object v0, Lcom/sec/android/allshare/DLog;->TAG_API:Ljava/lang/String;

    .line 40
    const-string v0, "1.4.5"

    sput-object v0, Lcom/sec/android/allshare/DLog;->API_VERSION:Ljava/lang/String;

    .line 42
    const-string v0, "2511"

    sput-object v0, Lcom/sec/android/allshare/DLog;->SVN_VERSION:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/allshare/DLog;->SECURE_DEV_MODE:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static final d_api(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "className"
    .parameter "msg"

    .prologue
    .line 77
    sget-boolean v0, Lcom/sec/android/allshare/iface/Const;->DEV_MODE:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p1}, Lcom/sec/android/allshare/DLog;->secureCheck(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    const-string v0, "AllShare(ASF)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/allshare/DLog;->TAG_API:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    return-void
.end method

.method public static dumpLog()V
    .locals 3

    .prologue
    .line 167
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.sec.android.allshare/allshare_log.hprof"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .local v0, e:Ljava/io/IOException;
    :goto_0
    return-void

    .line 169
    .end local v0           #e:Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 170
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static final i_api(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "className"
    .parameter "msg"

    .prologue
    .line 88
    sget-boolean v0, Lcom/sec/android/allshare/iface/Const;->DEV_MODE:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p1}, Lcom/sec/android/allshare/DLog;->secureCheck(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const-string v0, "AllShare(ASF)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/allshare/DLog;->TAG_API:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    return-void
.end method

.method private static isEmail(Ljava/lang/String;)Z
    .locals 5
    .parameter "str"

    .prologue
    .line 145
    const-string v1, "[_0-9a-zA-Z-]+[_a-z0-9-.]{2,}@[a-z0-9-]{2,}(.[a-z0-9]{2,})*"

    .line 146
    .local v1, myRegExp:Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 147
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 148
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 149
    .local v3, result:Z
    if-eqz v3, :cond_0

    .line 150
    const/4 v4, 0x1

    .line 152
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static isIP(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 138
    invoke-static {p0}, Lcom/sec/android/allshare/DLog$AddressChecker;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/allshare/DLog$AddressChecker;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isURL(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 156
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    const-string v1, "file:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 160
    const-string v1, "content://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 162
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static secureCheck(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    const/4 v0, 0x0

    .line 129
    sget-boolean v1, Lcom/sec/android/allshare/DLog;->SECURE_DEV_MODE:Z

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    invoke-static {p0}, Lcom/sec/android/allshare/DLog;->isEmail(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/sec/android/allshare/DLog;->isURL(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/sec/android/allshare/DLog;->isIP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setAPIVersionTag()V
    .locals 2

    .prologue
    .line 202
    sget-object v0, Lcom/sec/android/allshare/DLog;->API_VERSION:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/allshare/DLog;->API_VERSION:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/allshare/DLog;->SVN_VERSION:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/allshare/DLog;->SVN_VERSION:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 204
    :cond_0
    const-string v0, "API - "

    sput-object v0, Lcom/sec/android/allshare/DLog;->TAG_API:Ljava/lang/String;

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APIv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/allshare/DLog;->API_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/allshare/DLog;->SVN_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/allshare/DLog;->TAG_API:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final setApiLogMode(Z)V
    .locals 1
    .parameter "isOn"

    .prologue
    .line 57
    sput-boolean p0, Lcom/sec/android/allshare/iface/Const;->DEV_MODE:Z

    .line 58
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/allshare/DLog;->SECURE_DEV_MODE:Z

    .line 59
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final v_api(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "className"
    .parameter "msg"

    .prologue
    .line 66
    sget-boolean v0, Lcom/sec/android/allshare/iface/Const;->DEV_MODE:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p1}, Lcom/sec/android/allshare/DLog;->secureCheck(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const-string v0, "AllShare(ASF)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/allshare/DLog;->TAG_API:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    return-void
.end method

.method public static final w_api(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "className"
    .parameter "msg"

    .prologue
    .line 99
    sget-boolean v0, Lcom/sec/android/allshare/iface/Const;->DEV_MODE:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-static {p1}, Lcom/sec/android/allshare/DLog;->secureCheck(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const-string v0, "AllShare(ASF)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/allshare/DLog;->TAG_API:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " catched for ASF:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    return-void
.end method

.method public static final w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V
    .locals 3
    .parameter "className"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 122
    sget-boolean v0, Lcom/sec/android/allshare/iface/Const;->DEV_MODE:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-static {p1}, Lcom/sec/android/allshare/DLog;->secureCheck(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const-string v0, "AllShare(ASF)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/allshare/DLog;->TAG_API:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " catched for ASF:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    return-void
.end method

.method public static final w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "className"
    .parameter "msg"
    .parameter "ex"

    .prologue
    .line 110
    sget-boolean v0, Lcom/sec/android/allshare/iface/Const;->DEV_MODE:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p1}, Lcom/sec/android/allshare/DLog;->secureCheck(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const-string v0, "AllShare(ASF)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/allshare/DLog;->TAG_API:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " catched for ASF:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    return-void
.end method
