.class public Lcom/sec/android/allshare/extension/ItemExtractor$Seed;
.super Ljava/lang/Object;
.source "ItemExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/extension/ItemExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Seed"
.end annotation


# static fields
.field private static final DELIMITER:Ljava/lang/String; = ",@,#,"

.field private static final FIELD_NUMBER:I = 0x7


# instance fields
.field private mDuration:J

.field private mItemType:Ljava/lang/String;

.field private mItemUri:Landroid/net/Uri;

.field private mObjectId:Ljava/lang/String;

.field private mProviderId:Ljava/lang/String;

.field private mSubtitle:Landroid/net/Uri;

.field private mTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    .line 50
    iput-object v2, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/allshare/extension/ItemExtractor$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sec/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sec/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sec/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sec/android/allshare/extension/ItemExtractor$Seed;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$602(Lcom/sec/android/allshare/extension/ItemExtractor$Seed;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/sec/android/allshare/extension/ItemExtractor$Seed;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    return-object p1
.end method

.method public static parseSeedString(Ljava/lang/String;)Lcom/sec/android/allshare/extension/ItemExtractor$Seed;
    .locals 17
    .parameter "seedString"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    const-string v14, "ItemExtractor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "parseSeedString : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/allshare/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v14, ",@,#,"

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .local v9, st:Ljava/util/StringTokenizer;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 103
    .local v1, count:I
    const/4 v14, 0x7

    if-eq v1, v14, :cond_0

    .line 105
    const-string v14, "ItemExtractor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "count : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v8, 0x0

    .line 155
    :goto_0
    return-object v8

    .line 109
    :cond_0
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 110
    .local v13, type:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, providerId:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, objectId:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 114
    .local v12, title:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, temp:Ljava/lang/String;
    const/4 v10, 0x0

    .line 117
    .local v10, subtitle:Landroid/net/Uri;
    :try_start_0
    const-string v14, "null"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-eqz v14, :cond_1

    .line 118
    const/4 v10, 0x0

    .line 126
    :goto_1
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 127
    const-wide/16 v2, -0x1

    .line 129
    .local v2, duration:J
    :try_start_1
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 134
    :goto_2
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 135
    const/4 v5, 0x0

    .line 137
    .local v5, itemUri:Landroid/net/Uri;
    :try_start_2
    const-string v14, "null"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v14

    if-eqz v14, :cond_2

    .line 138
    const/4 v5, 0x0

    .line 146
    :goto_3
    new-instance v8, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;

    invoke-direct {v8}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;-><init>()V

    .line 147
    .local v8, seed:Lcom/sec/android/allshare/extension/ItemExtractor$Seed;
    iput-object v13, v8, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    .line 148
    iput-object v7, v8, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    .line 149
    iput-object v6, v8, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    .line 150
    iput-object v12, v8, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    .line 151
    iput-object v10, v8, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    .line 152
    iput-wide v2, v8, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    .line 153
    iput-object v5, v8, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    goto :goto_0

    .line 120
    .end local v2           #duration:J
    .end local v5           #itemUri:Landroid/net/Uri;
    .end local v8           #seed:Lcom/sec/android/allshare/extension/ItemExtractor$Seed;
    :cond_1
    :try_start_3
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v10

    goto :goto_1

    .line 122
    :catch_0
    move-exception v4

    .line 123
    .local v4, e:Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_1

    .line 130
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #duration:J
    :catch_1
    move-exception v4

    .line 131
    .restart local v4       #e:Ljava/lang/Exception;
    const-wide/16 v2, -0x1

    goto :goto_2

    .line 140
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #itemUri:Landroid/net/Uri;
    :cond_2
    :try_start_4
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v5

    goto :goto_3

    .line 142
    :catch_2
    move-exception v4

    .line 143
    .restart local v4       #e:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public static parseSeedStringUsingSplit(Ljava/lang/String;)Lcom/sec/android/allshare/extension/ItemExtractor$Seed;
    .locals 20
    .parameter "seedString"

    .prologue
    .line 159
    const-string v17, "ItemExtractor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "parseSeedStringUsingSplit : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/android/allshare/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v17, ",@,#,"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 162
    .local v12, seedMember:[Ljava/lang/String;
    array-length v2, v12

    .line 163
    .local v2, count:I
    const/4 v6, 0x0

    .line 165
    .local v6, index:I
    const/16 v17, 0x7

    move/from16 v0, v17

    if-eq v2, v0, :cond_0

    .line 166
    const-string v17, "ItemExtractor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "count : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v11, 0x0

    .line 216
    :goto_0
    return-object v11

    .line 170
    :cond_0
    add-int/lit8 v7, v6, 0x1

    .end local v6           #index:I
    .local v7, index:I
    aget-object v16, v12, v6

    .line 171
    .local v16, type:Ljava/lang/String;
    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    aget-object v10, v12, v7

    .line 172
    .local v10, providerId:Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    .end local v6           #index:I
    .restart local v7       #index:I
    aget-object v9, v12, v6

    .line 174
    .local v9, objectId:Ljava/lang/String;
    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    aget-object v15, v12, v7

    .line 175
    .local v15, title:Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    .end local v6           #index:I
    .restart local v7       #index:I
    aget-object v14, v12, v6

    .line 176
    .local v14, temp:Ljava/lang/String;
    const/4 v13, 0x0

    .line 178
    .local v13, subtitle:Landroid/net/Uri;
    :try_start_0
    const-string v17, "null"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-eqz v17, :cond_1

    .line 179
    const/4 v13, 0x0

    .line 187
    :goto_1
    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    aget-object v14, v12, v7

    .line 188
    const-wide/16 v3, -0x1

    .line 190
    .local v3, duration:J
    :try_start_1
    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v3

    .line 195
    :goto_2
    add-int/lit8 v7, v6, 0x1

    .end local v6           #index:I
    .restart local v7       #index:I
    aget-object v14, v12, v6

    .line 196
    const/4 v8, 0x0

    .line 198
    .local v8, itemUri:Landroid/net/Uri;
    :try_start_2
    const-string v17, "null"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v17

    if-eqz v17, :cond_2

    .line 199
    const/4 v8, 0x0

    .line 207
    :goto_3
    new-instance v11, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;

    invoke-direct {v11}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;-><init>()V

    .line 208
    .local v11, seed:Lcom/sec/android/allshare/extension/ItemExtractor$Seed;
    move-object/from16 v0, v16

    iput-object v0, v11, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    .line 209
    iput-object v10, v11, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    .line 210
    iput-object v9, v11, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    .line 211
    iput-object v15, v11, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    .line 212
    iput-object v13, v11, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    .line 213
    iput-wide v3, v11, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    .line 214
    iput-object v8, v11, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    move v6, v7

    .line 216
    .end local v7           #index:I
    .restart local v6       #index:I
    goto :goto_0

    .line 181
    .end local v3           #duration:J
    .end local v6           #index:I
    .end local v8           #itemUri:Landroid/net/Uri;
    .end local v11           #seed:Lcom/sec/android/allshare/extension/ItemExtractor$Seed;
    .restart local v7       #index:I
    :cond_1
    :try_start_3
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v13

    goto :goto_1

    .line 183
    :catch_0
    move-exception v5

    .line 184
    .local v5, e:Ljava/lang/Exception;
    const/4 v13, 0x0

    goto :goto_1

    .line 191
    .end local v5           #e:Ljava/lang/Exception;
    .end local v7           #index:I
    .restart local v3       #duration:J
    .restart local v6       #index:I
    :catch_1
    move-exception v5

    .line 192
    .restart local v5       #e:Ljava/lang/Exception;
    const-wide/16 v3, -0x1

    goto :goto_2

    .line 201
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #index:I
    .restart local v7       #index:I
    .restart local v8       #itemUri:Landroid/net/Uri;
    :cond_2
    :try_start_4
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v8

    goto :goto_3

    .line 203
    :catch_2
    move-exception v5

    .line 204
    .restart local v5       #e:Ljava/lang/Exception;
    const/4 v8, 0x0

    goto :goto_3
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    return-wide v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getItemUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getObjectID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 56
    iget-object v2, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_0
    const-string v1, "null"

    .line 58
    .local v1, subtitle:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    :cond_1
    const-string v0, "null"

    .line 61
    .local v0, itemUri:Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",@,#,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",@,#,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",@,#,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",@,#,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",@,#,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",@,#,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 56
    .end local v0           #itemUri:Ljava/lang/String;
    .end local v1           #subtitle:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 58
    .restart local v1       #subtitle:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getSubtitle()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    return-object v0
.end method
