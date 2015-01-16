.class public Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field mBuffer:[B

.field mBuffer2:[B

.field private mCachedSize:J

.field private mFreeSize:J

.field private mLowCachedSize:J

.field private mLowFreeSize:J

.field private mShmemSize:J

.field private mTotalSize:J

.field mbuffer3:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    .line 25
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer2:[B

    .line 26
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mbuffer3:[B

    return-void
.end method

.method private extractMemValue([BI)J
    .locals 6
    .parameter "buffer"
    .parameter "index"

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 63
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_2

    aget-byte v2, p1, p2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 64
    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_1

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_1

    .line 65
    move v0, p2

    .line 66
    .local v0, start:I
    add-int/lit8 p2, p2, 0x1

    .line 68
    :goto_1
    array-length v2, p1

    if-ge p2, v2, :cond_0

    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_0

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_0

    .line 69
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 71
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p2, v0

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 72
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    .line 76
    .end local v0           #start:I
    .end local v1           #str:Ljava/lang/String;
    :goto_2
    return-wide v2

    .line 74
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 76
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method private findKeyword([BIILjava/lang/String;)I
    .locals 4
    .parameter "buffer"
    .parameter "index"
    .parameter "bound"
    .parameter "text"

    .prologue
    .line 50
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    .line 51
    .local v0, N:I
    const/4 v3, 0x0

    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 52
    .local v1, cFirst:C
    move v2, p2

    .local v2, i:I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 53
    aget-byte v3, p1, v2

    if-ne v3, v1, :cond_0

    .line 54
    invoke-direct {p0, p1, v2, p4}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    add-int v3, v2, v0

    .line 59
    :goto_1
    return v3

    .line 52
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private matchText([BILjava/lang/String;)Z
    .locals 5
    .parameter "buffer"
    .parameter "index"
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 38
    .local v0, N:I
    add-int v3, p2, v0

    array-length v4, p1

    if-lt v3, v4, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v2

    .line 41
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 42
    add-int v3, p2, v1

    aget-byte v3, p1, v3

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 46
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCachedSize()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J

    return-wide v0
.end method

.method public getFreeSize()J
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J

    return-wide v0
.end method

.method public getLowCachedSize()J
    .locals 2

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mLowCachedSize:J

    return-wide v0
.end method

.method public getLowFreeSize()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mLowFreeSize:J

    return-wide v0
.end method

.method public getShmemSize()J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mShmemSize:J

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J

    return-wide v0
.end method

.method public getUssByPid(I)J
    .locals 16
    .parameter "pid"

    .prologue
    .line 82
    const-wide/16 v4, 0x0

    .line 83
    .local v4, resident:J
    const-wide/16 v7, 0x0

    .line 84
    .local v7, shared:J
    const-wide/16 v11, 0x0

    .line 86
    .local v11, uss:J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/proc/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/statm"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 90
    .local v6, savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, is:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/util/MemInfoReader;->mbuffer3:[B

    const/4 v14, 0x0

    const/16 v15, 0x200

    invoke-virtual {v1, v13, v14, v15}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    .line 92
    .local v2, len:I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 94
    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/util/MemInfoReader;->mbuffer3:[B

    invoke-direct {v9, v13}, Ljava/lang/String;-><init>([B)V

    .line 95
    .local v9, str:Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 97
    .local v10, subs:[Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    mul-int/lit16 v13, v13, 0x1000

    int-to-long v4, v13

    .line 98
    const/4 v13, 0x2

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v13

    mul-int/lit16 v13, v13, 0x1000

    int-to-long v7, v13

    .line 99
    sub-long v11, v4, v7

    .line 104
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 107
    .end local v1           #is:Ljava/io/FileInputStream;
    .end local v2           #len:I
    .end local v9           #str:Ljava/lang/String;
    .end local v10           #subs:[Ljava/lang/String;
    :goto_0
    return-wide v11

    .line 101
    :catch_0
    move-exception v13

    .line 104
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 102
    :catch_1
    move-exception v13

    .line 104
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    :catchall_0
    move-exception v13

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v13
.end method

.method public readMemInfo()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x4

    .line 115
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v7

    .line 117
    .local v7, savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    const-wide/16 v8, 0x0

    :try_start_0
    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J

    .line 118
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J

    .line 119
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J

    .line 121
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mLowFreeSize:J

    .line 122
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mLowCachedSize:J

    .line 124
    new-instance v3, Ljava/io/FileInputStream;

    const-string v8, "/proc/meminfo"

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 125
    .local v3, is:Ljava/io/FileInputStream;
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    const/4 v9, 0x0

    const/16 v10, 0x400

    invoke-virtual {v3, v8, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    .line 126
    .local v5, len:I
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 128
    new-instance v4, Ljava/io/FileInputStream;

    const-string v8, "/proc/zoneinfo"

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 129
    .local v4, is2:Ljava/io/FileInputStream;
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer2:[B

    const/4 v9, 0x0

    const/16 v10, 0x400

    invoke-virtual {v4, v8, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .line 130
    .local v6, len2:I
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 132
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    array-length v0, v8

    .line 133
    .local v0, BUFLEN:I
    const/4 v1, 0x0

    .line 134
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_5

    const/4 v8, 0x4

    if-ge v1, v8, :cond_5

    .line 135
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    const-string v9, "MemTotal"

    invoke-direct {p0, v8, v2, v9}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 136
    add-int/lit8 v2, v2, 0x8

    .line 137
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    invoke-direct {p0, v8, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J

    .line 138
    add-int/lit8 v1, v1, 0x1

    .line 155
    :cond_0
    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    aget-byte v8, v8, v2

    const/16 v9, 0xa

    if-eq v8, v9, :cond_4

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 139
    :cond_1
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    const-string v9, "MemFree"

    invoke-direct {p0, v8, v2, v9}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 140
    add-int/lit8 v2, v2, 0x7

    .line 141
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    invoke-direct {p0, v8, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    :cond_2
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    const-string v9, "Cached"

    invoke-direct {p0, v8, v2, v9}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 144
    add-int/lit8 v2, v2, 0x6

    .line 145
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    invoke-direct {p0, v8, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    :cond_3
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    const-string v9, "Shmem"

    invoke-direct {p0, v8, v2, v9}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 150
    add-int/lit8 v2, v2, 0x5

    .line 151
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    invoke-direct {p0, v8, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mShmemSize:J

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 134
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_5
    const/4 v2, 0x0

    .line 163
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer2:[B

    const/16 v9, 0x400

    const-string/jumbo v10, "zone"

    invoke-direct {p0, v8, v2, v9, v10}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v2

    if-lez v2, :cond_6

    .line 165
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer2:[B

    const/16 v9, 0x400

    const-string v10, "Normal"

    invoke-direct {p0, v8, v2, v9, v10}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v2

    if-lez v2, :cond_6

    .line 167
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer2:[B

    const/16 v9, 0x400

    const-string/jumbo v10, "nr_free_pages"

    invoke-direct {p0, v8, v2, v9, v10}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v2

    if-lez v2, :cond_6

    .line 168
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer2:[B

    invoke-direct {p0, v8, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v8

    mul-long/2addr v8, v11

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mLowFreeSize:J

    .line 170
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer2:[B

    const/16 v9, 0x400

    const-string/jumbo v10, "nr_file_pages"

    invoke-direct {p0, v8, v2, v9, v10}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v2

    if-lez v2, :cond_6

    .line 171
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer2:[B

    invoke-direct {p0, v8, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v8

    mul-long/2addr v8, v11

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mLowCachedSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    :cond_6
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 181
    .end local v0           #BUFLEN:I
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #is:Ljava/io/FileInputStream;
    .end local v4           #is2:Ljava/io/FileInputStream;
    .end local v5           #len:I
    .end local v6           #len2:I
    :goto_2
    return-void

    .line 176
    :catch_0
    move-exception v8

    .line 179
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    .line 177
    :catch_1
    move-exception v8

    .line 179
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    :catchall_0
    move-exception v8

    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v8
.end method
