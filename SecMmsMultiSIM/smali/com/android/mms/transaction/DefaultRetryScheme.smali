.class public Lcom/android/mms/transaction/DefaultRetryScheme;
.super Lcom/android/mms/transaction/AbstractRetryScheme;
.source "DefaultRetryScheme.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/DefaultRetryScheme"

.field private static final sDefaultRetryScheme:[I

.field private static final sDefaultRetrySchemeChn:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetrySchemeChn:[I

    return-void

    .line 31
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t
        0x20t 0xbft 0x2t 0x0t
        0xe0t 0x93t 0x4t 0x0t
        0x0t 0x53t 0x7t 0x0t
    .end array-data

    .line 38
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t
        0x20t 0xbft 0x2t 0x0t
        0xe0t 0x93t 0x4t 0x0t
        0x0t 0x53t 0x7t 0x0t
        0x40t 0x77t 0x1bt 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "retriedTimes"

    .prologue
    .line 44
    invoke-direct {p0, p2}, Lcom/android/mms/transaction/AbstractRetryScheme;-><init>(I)V

    .line 46
    iget v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    .line 48
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    sget-object v1, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetrySchemeChn:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetrySchemeChn:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    .line 56
    :goto_2
    return-void

    .line 46
    :cond_0
    iget v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    goto :goto_0

    .line 49
    :cond_1
    iget v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    goto :goto_1

    .line 52
    :cond_2
    iget v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    sget-object v1, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v1, v1

    if-lt v0, v1, :cond_3

    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    iput v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    goto :goto_3
.end method


# virtual methods
.method public getRetryLimit()I
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetrySchemeChn:[I

    array-length v0, v0

    .line 63
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public getWaitingInterval()J
    .locals 4

    .prologue
    .line 69
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "Mms/DefaultRetryScheme"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Next int (forChn): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetrySchemeChn:[I

    iget v3, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetrySchemeChn:[I

    iget v1, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    aget v0, v0, v1

    int-to-long v0, v0

    .line 74
    :goto_0
    return-wide v0

    .line 73
    :cond_0
    const-string v0, "Mms/DefaultRetryScheme"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Next int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    iget v3, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    iget v1, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    aget v0, v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method
