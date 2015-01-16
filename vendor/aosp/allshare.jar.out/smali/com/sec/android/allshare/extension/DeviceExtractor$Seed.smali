.class public Lcom/sec/android/allshare/extension/DeviceExtractor$Seed;
.super Ljava/lang/Object;
.source "DeviceExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/extension/DeviceExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Seed"
.end annotation


# static fields
.field private static final DELIMITER:Ljava/lang/String; = "+"


# instance fields
.field private mInterface:Ljava/lang/String;

.field private mUUID:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/allshare/extension/DeviceExtractor$Seed;->mInterface:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/allshare/extension/DeviceExtractor$Seed;->mUUID:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static parseSeedString(Ljava/lang/String;)Lcom/sec/android/allshare/extension/DeviceExtractor$Seed;
    .locals 6
    .parameter "seedString"

    .prologue
    .line 38
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "+"

    invoke-direct {v3, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .local v3, st:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 41
    .local v0, count:I
    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    .line 42
    const/4 v2, 0x0

    .line 56
    :goto_0
    return-object v2

    .line 44
    :cond_0
    const-string v4, ""

    .line 45
    .local v4, uuid:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 46
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 48
    :cond_1
    const-string v1, ""

    .line 49
    .local v1, netInterface:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 50
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 52
    :cond_2
    new-instance v2, Lcom/sec/android/allshare/extension/DeviceExtractor$Seed;

    invoke-direct {v2}, Lcom/sec/android/allshare/extension/DeviceExtractor$Seed;-><init>()V

    .line 53
    .local v2, seed:Lcom/sec/android/allshare/extension/DeviceExtractor$Seed;
    iput-object v4, v2, Lcom/sec/android/allshare/extension/DeviceExtractor$Seed;->mUUID:Ljava/lang/String;

    .line 54
    iput-object v1, v2, Lcom/sec/android/allshare/extension/DeviceExtractor$Seed;->mInterface:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/allshare/extension/DeviceExtractor$Seed;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/allshare/extension/DeviceExtractor$Seed;->mUUID:Ljava/lang/String;

    return-object v0
.end method
