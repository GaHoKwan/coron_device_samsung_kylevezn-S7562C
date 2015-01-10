.class public final Lcom/android/mms/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final DEBUG:I = 0x1

.field private static final ENABLE_STACK_INFO:Z = false

.field private static final ENDER:Ljava/lang/String; = "[end]    "

#the value of this static final field might be set in the static constructor
.field public static final ENG_VER:Z = false

.field public static final ERROR:I = 0x4

.field public static final FQCN:Ljava/lang/String; = null

.field public static final INFO:I = 0x2

.field private static final LINE_SEP:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final LINE_SEP_LEN:I = 0x0

.field private static final PRINT_CLASS_NAME_ON_CS:Z = false

.field private static final STARTER:Ljava/lang/String; = "[start]    "

.field private static final TAG:Ljava/lang/String; = "Mms/Log"

.field public static final TRACE:Z = false

.field public static final TSP:Z = false

.field public static final VERBOSE:I = 0x0

.field public static final WARN:I = 0x3

.field private static final mPrintThreadId:Z = false

.field private static sLevel:I = 0x0

.field private static sLevelNames:[Ljava/lang/String; = null

.field private static final sLogTrigger:Ljava/lang/String; = "*#log#"

.field private static sPrintSecured:Z

.field static sStartTime:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 19
    sput v1, Lcom/android/mms/Log;->sLevel:I

    .line 27
    sput-boolean v1, Lcom/android/mms/Log;->sPrintSecured:Z

    .line 51
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/mms/Log;->ENG_VER:Z

    .line 278
    const-class v0, Lcom/android/mms/Log;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    .line 280
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/Log;->LINE_SEP:Ljava/lang/String;

    .line 282
    sget-object v0, Lcom/android/mms/Log;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/mms/Log;->LINE_SEP_LEN:I

    return-void

    :cond_0
    move v0, v1

    .line 51
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 0
    .parameter "msg"
    .parameter "fqcn"
    .parameter "bFindFqcnLast"
    .parameter "bSkip1StCs"

    .prologue
    .line 385
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 142
    sget v0, Lcom/android/mms/Log;->sLevel:I

    if-gt v0, v2, :cond_0

    .line 145
    sget-object v0, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 150
    sget v0, Lcom/android/mms/Log;->sLevel:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 154
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 201
    sget v0, Lcom/android/mms/Log;->sLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 204
    sget-object v0, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 210
    sget v0, Lcom/android/mms/Log;->sLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 213
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    :cond_0
    return-void
.end method

.method public static end(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[end]    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public static getCsStr(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "st"
    .parameter "idxEnd"

    .prologue
    .line 288
    const-string v2, ""

    .line 290
    .local v2, retString:Ljava/lang/String;
    const-string v3, "("

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .line 292
    .local v1, idxStart:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 293
    const-string v3, ""

    .line 311
    :goto_0
    return-object v3

    .line 296
    :cond_0
    const-string v3, "."

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .line 305
    :try_start_0
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    move-object v3, v2

    .line 311
    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "Mms/Log"

    const-string v4, "IndexOutOfBoundsException"

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    const-string v2, ""

    goto :goto_1
.end method

.method public static getCurrentLevel()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/android/mms/Log;->sLevel:I

    return v0
.end method

.method public static getCurrentLevelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/android/mms/Log;->getLevelNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/Log;->getCurrentLevel()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getCurrentThreadInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLengthString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 426
    if-nez p0, :cond_0

    .line 427
    const-string v0, "null"

    .line 429
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLevelNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/android/mms/Log;->sLevelNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/Log;->sLevelNames:[Ljava/lang/String;

    .line 67
    :cond_0
    sget-object v0, Lcom/android/mms/Log;->sLevelNames:[Ljava/lang/String;

    return-object v0
.end method

.method public static getLogTrigger()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "*#log#"

    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .parameter "tr"

    .prologue
    .line 107
    invoke-static {p0}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 160
    sget v0, Lcom/android/mms/Log;->sLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 164
    sget-object v0, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 170
    sget v0, Lcom/android/mms/Log;->sLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 174
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :cond_0
    return-void
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 1
    .parameter "TAG"
    .parameter "LEVEL"

    .prologue
    .line 100
    const-string v0, "Mms:transaction"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    .line 103
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static isPrintSecured()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/mms/Log;->sPrintSecured:Z

    return v0
.end method

.method public static varargs log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/mms/Log;->safeFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public static varargs logWithTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .parameter "TAG"
    .parameter "format"
    .parameter "args"

    .prologue
    const/4 v5, 0x7

    .line 220
    sget v6, Lcom/android/mms/Log;->sLevel:I

    if-gtz v6, :cond_3

    .line 221
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 222
    .local v0, current:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 223
    .local v4, stack:[Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string v6, "] "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-static {p1, p2}, Lcom/android/mms/Log;->safeFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const-string v6, " <- "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    array-length v6, v4

    if-le v6, v5, :cond_1

    .line 233
    .local v5, stop:I
    :goto_0
    const/4 v1, 0x3

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 234
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, methodName:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    add-int/lit8 v6, v1, 0x1

    if-eq v6, v5, :cond_0

    .line 238
    const-string v6, " <- "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 232
    .end local v1           #i:I
    .end local v2           #methodName:Ljava/lang/String;
    .end local v5           #stop:I
    :cond_1
    array-length v5, v4

    goto :goto_0

    .line 241
    .restart local v1       #i:I
    .restart local v5       #stop:I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v0           #current:Ljava/lang/Thread;
    .end local v1           #i:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    .end local v4           #stack:[Ljava/lang/StackTraceElement;
    .end local v5           #stop:I
    :cond_3
    return-void
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 418
    sget v0, Lcom/android/mms/Log;->sLevel:I

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    sget-object v0, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    return-void
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 126
    sget-boolean v0, Lcom/android/mms/Log;->sPrintSecured:Z

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    return-void
.end method

.method private static varargs safeFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 262
    const-string v1, ""

    .line 264
    .local v1, formatted:Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 273
    :goto_0
    return-object v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, ex:Ljava/util/IllegalFormatException;
    const-string v2, "Mms/Log"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    move-object v1, p0

    .line 271
    goto :goto_0

    .line 268
    .end local v0           #ex:Ljava/util/IllegalFormatException;
    :catch_1
    move-exception v0

    .line 269
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "Mms/Log"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v1, ""

    goto :goto_0
.end method

.method public static setStartTime()V
    .locals 2

    .prologue
    .line 393
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    sput-wide v0, Lcom/android/mms/Log;->sStartTime:D

    .line 394
    return-void
.end method

.method public static start(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[start]    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public static t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 415
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 116
    sget v0, Lcom/android/mms/Log;->sLevel:I

    if-gtz v0, :cond_0

    .line 119
    sget-object v0, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 134
    sget v0, Lcom/android/mms/Log;->sLevel:I

    if-gtz v0, :cond_0

    .line 137
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 181
    sget v0, Lcom/android/mms/Log;->sLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 185
    sget-object v0, Lcom/android/mms/Log;->FQCN:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/mms/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 190
    sget v0, Lcom/android/mms/Log;->sLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 194
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    :cond_0
    return-void
.end method
