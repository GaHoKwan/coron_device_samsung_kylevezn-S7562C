.class public Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;
.super Ljava/lang/Object;
.source "HanziToStroke.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;
    }
.end annotation


# static fields
.field private static devider:[I

.field private static sSingleton:Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x2b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->devider:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x4et 0x0t 0x0t
        0xf4t 0x4ft 0x0t 0x0t
        0xe8t 0x51t 0x0t 0x0t
        0xdct 0x53t 0x0t 0x0t
        0xd0t 0x55t 0x0t 0x0t
        0xc4t 0x57t 0x0t 0x0t
        0xb8t 0x59t 0x0t 0x0t
        0xact 0x5bt 0x0t 0x0t
        0xa0t 0x5dt 0x0t 0x0t
        0x94t 0x5ft 0x0t 0x0t
        0x88t 0x61t 0x0t 0x0t
        0x7ct 0x63t 0x0t 0x0t
        0x70t 0x65t 0x0t 0x0t
        0x64t 0x67t 0x0t 0x0t
        0x58t 0x69t 0x0t 0x0t
        0x4ct 0x6bt 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t
        0x34t 0x6ft 0x0t 0x0t
        0x28t 0x71t 0x0t 0x0t
        0x1ct 0x73t 0x0t 0x0t
        0x10t 0x75t 0x0t 0x0t
        0x4t 0x77t 0x0t 0x0t
        0xf8t 0x78t 0x0t 0x0t
        0xect 0x7at 0x0t 0x0t
        0xe0t 0x7ct 0x0t 0x0t
        0xd4t 0x7et 0x0t 0x0t
        0xc8t 0x80t 0x0t 0x0t
        0xbct 0x82t 0x0t 0x0t
        0xb0t 0x84t 0x0t 0x0t
        0xa4t 0x86t 0x0t 0x0t
        0x98t 0x88t 0x0t 0x0t
        0x8ct 0x8at 0x0t 0x0t
        0x80t 0x8ct 0x0t 0x0t
        0x74t 0x8et 0x0t 0x0t
        0x68t 0x90t 0x0t 0x0t
        0x5ct 0x92t 0x0t 0x0t
        0x50t 0x94t 0x0t 0x0t
        0x44t 0x96t 0x0t 0x0t
        0x38t 0x98t 0x0t 0x0t
        0x2ct 0x9at 0x0t 0x0t
        0x20t 0x9ct 0x0t 0x0t
        0x14t 0x9et 0x0t 0x0t
        0xa5t 0x9ft 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    return-void
.end method

.method private static find([[[II)[I
    .locals 6
    .parameter "values"
    .parameter "key"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 303
    const/4 v1, 0x0

    .line 304
    .local v1, lowerBound:I
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    .line 307
    .local v2, upperBound:I
    :goto_0
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 308
    .local v0, curIn:I
    aget-object v3, p0, v0

    aget-object v3, v3, v4

    aget v3, v3, v4

    if-ne v3, p1, :cond_0

    .line 309
    aget-object v3, p0, v0

    aget-object v3, v3, v5

    .line 311
    :goto_1
    return-object v3

    .line 310
    :cond_0
    if-le v1, v2, :cond_1

    .line 311
    new-array v3, v5, [I

    aput v4, v3, v4

    goto :goto_1

    .line 313
    :cond_1
    aget-object v3, p0, v0

    aget-object v3, v3, v4

    aget v3, v3, v4

    if-ge v3, p1, :cond_2

    .line 314
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 316
    :cond_2
    add-int/lit8 v2, v0, -0x1

    goto :goto_0
.end method

.method private static findMapper(I)I
    .locals 3
    .parameter "c"

    .prologue
    .line 294
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->devider:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 295
    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->devider:[I

    aget v1, v1, v0

    if-lt p0, v1, :cond_0

    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->devider:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-ge p0, v1, :cond_0

    .line 296
    add-int/lit8 v1, v0, 0x1

    .line 299
    :goto_1
    return v1

    .line 294
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static declared-synchronized getIntance()Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;
    .locals 2

    .prologue
    .line 84
    const-class v1, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->sSingleton:Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->sSingleton:Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;

    .line 87
    :cond_0
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->sSingleton:Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getToken(C)Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;
    .locals 8
    .parameter "character"

    .prologue
    const/4 v7, 0x3

    .line 121
    new-instance v5, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;

    invoke-direct {v5}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;-><init>()V

    .line 122
    .local v5, token:Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, letter:Ljava/lang/String;
    iput-object v2, v5, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;->source:Ljava/lang/String;

    .line 124
    const/4 v6, 0x2

    iput v6, v5, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;->type:I

    .line 126
    const/16 v6, 0x100

    if-ge p1, v6, :cond_0

    .line 127
    const/4 v6, 0x1

    iput v6, v5, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;->type:I

    .line 128
    iput-object v2, v5, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;->target:Ljava/lang/String;

    .line 289
    :goto_0
    return-object v5

    .line 130
    :cond_0
    const/16 v6, 0x4e00

    if-lt p1, v6, :cond_1

    const v6, 0x9fa5

    if-le p1, v6, :cond_2

    .line 132
    :cond_1
    iput v7, v5, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;->type:I

    .line 133
    iput-object v2, v5, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;->target:Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->findMapper(I)I

    move-result v3

    .line 140
    .local v3, method:I
    packed-switch v3, :pswitch_data_0

    .line 269
    iput v7, v5, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;->type:I

    .line 270
    iput-object v2, v5, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;->target:Ljava/lang/String;

    goto :goto_0

    .line 142
    :pswitch_0
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke1;->HANZI_TO_STROKE_MAP_1:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 274
    .local v0, array:[I
    :goto_1
    const/4 v6, 0x0

    aget v6, v0, v6

    if-nez v6, :cond_3

    .line 275
    iput v7, v5, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;->type:I

    .line 276
    iput-object v2, v5, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;->target:Ljava/lang/String;

    goto :goto_0

    .line 145
    .end local v0           #array:[I
    :pswitch_1
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke2;->HANZI_TO_STROKE_MAP_2:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 146
    .restart local v0       #array:[I
    goto :goto_1

    .line 148
    .end local v0           #array:[I
    :pswitch_2
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke3;->HANZI_TO_STROKE_MAP_3:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 149
    .restart local v0       #array:[I
    goto :goto_1

    .line 151
    .end local v0           #array:[I
    :pswitch_3
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke4;->HANZI_TO_STROKE_MAP_4:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 152
    .restart local v0       #array:[I
    goto :goto_1

    .line 154
    .end local v0           #array:[I
    :pswitch_4
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke5;->HANZI_TO_STROKE_MAP_5:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 155
    .restart local v0       #array:[I
    goto :goto_1

    .line 157
    .end local v0           #array:[I
    :pswitch_5
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke6;->HANZI_TO_STROKE_MAP_6:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 158
    .restart local v0       #array:[I
    goto :goto_1

    .line 160
    .end local v0           #array:[I
    :pswitch_6
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke7;->HANZI_TO_STROKE_MAP_7:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 161
    .restart local v0       #array:[I
    goto :goto_1

    .line 163
    .end local v0           #array:[I
    :pswitch_7
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke8;->HANZI_TO_STROKE_MAP_8:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 164
    .restart local v0       #array:[I
    goto :goto_1

    .line 166
    .end local v0           #array:[I
    :pswitch_8
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke9;->HANZI_TO_STROKE_MAP_9:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 167
    .restart local v0       #array:[I
    goto :goto_1

    .line 169
    .end local v0           #array:[I
    :pswitch_9
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke10;->HANZI_TO_STROKE_MAP_10:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 170
    .restart local v0       #array:[I
    goto :goto_1

    .line 172
    .end local v0           #array:[I
    :pswitch_a
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke11;->HANZI_TO_STROKE_MAP_11:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 173
    .restart local v0       #array:[I
    goto :goto_1

    .line 175
    .end local v0           #array:[I
    :pswitch_b
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke12;->HANZI_TO_STROKE_MAP_12:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 176
    .restart local v0       #array:[I
    goto :goto_1

    .line 178
    .end local v0           #array:[I
    :pswitch_c
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke13;->HANZI_TO_STROKE_MAP_13:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 179
    .restart local v0       #array:[I
    goto :goto_1

    .line 181
    .end local v0           #array:[I
    :pswitch_d
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke14;->HANZI_TO_STROKE_MAP_14:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 182
    .restart local v0       #array:[I
    goto :goto_1

    .line 184
    .end local v0           #array:[I
    :pswitch_e
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke15;->HANZI_TO_STROKE_MAP_15:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 185
    .restart local v0       #array:[I
    goto :goto_1

    .line 187
    .end local v0           #array:[I
    :pswitch_f
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke16;->HANZI_TO_STROKE_MAP_16:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 188
    .restart local v0       #array:[I
    goto :goto_1

    .line 190
    .end local v0           #array:[I
    :pswitch_10
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke17;->HANZI_TO_STROKE_MAP_17:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 191
    .restart local v0       #array:[I
    goto :goto_1

    .line 193
    .end local v0           #array:[I
    :pswitch_11
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke18;->HANZI_TO_STROKE_MAP_18:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 194
    .restart local v0       #array:[I
    goto :goto_1

    .line 196
    .end local v0           #array:[I
    :pswitch_12
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke19;->HANZI_TO_STROKE_MAP_19:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 197
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 199
    .end local v0           #array:[I
    :pswitch_13
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke20;->HANZI_TO_STROKE_MAP_20:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 200
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 202
    .end local v0           #array:[I
    :pswitch_14
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke21;->HANZI_TO_STROKE_MAP_21:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 203
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 205
    .end local v0           #array:[I
    :pswitch_15
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke22;->HANZI_TO_STROKE_MAP_22:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 206
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 208
    .end local v0           #array:[I
    :pswitch_16
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke23;->HANZI_TO_STROKE_MAP_23:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 209
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 211
    .end local v0           #array:[I
    :pswitch_17
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke24;->HANZI_TO_STROKE_MAP_24:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 212
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 214
    .end local v0           #array:[I
    :pswitch_18
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke25;->HANZI_TO_STROKE_MAP_25:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 215
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 217
    .end local v0           #array:[I
    :pswitch_19
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke26;->HANZI_TO_STROKE_MAP_26:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 218
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 220
    .end local v0           #array:[I
    :pswitch_1a
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke27;->HANZI_TO_STROKE_MAP_27:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 221
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 223
    .end local v0           #array:[I
    :pswitch_1b
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke28;->HANZI_TO_STROKE_MAP_28:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 224
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 226
    .end local v0           #array:[I
    :pswitch_1c
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke29;->HANZI_TO_STROKE_MAP_29:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 227
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 229
    .end local v0           #array:[I
    :pswitch_1d
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke30;->HANZI_TO_STROKE_MAP_30:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 230
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 232
    .end local v0           #array:[I
    :pswitch_1e
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke31;->HANZI_TO_STROKE_MAP_31:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 233
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 235
    .end local v0           #array:[I
    :pswitch_1f
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke32;->HANZI_TO_STROKE_MAP_32:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 236
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 238
    .end local v0           #array:[I
    :pswitch_20
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke33;->HANZI_TO_STROKE_MAP_33:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 239
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 241
    .end local v0           #array:[I
    :pswitch_21
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke34;->HANZI_TO_STROKE_MAP_34:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 242
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 244
    .end local v0           #array:[I
    :pswitch_22
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke35;->HANZI_TO_STROKE_MAP_35:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 245
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 247
    .end local v0           #array:[I
    :pswitch_23
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke36;->HANZI_TO_STROKE_MAP_36:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 248
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 250
    .end local v0           #array:[I
    :pswitch_24
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke37;->HANZI_TO_STROKE_MAP_37:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 251
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 253
    .end local v0           #array:[I
    :pswitch_25
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke38;->HANZI_TO_STROKE_MAP_38:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 254
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 256
    .end local v0           #array:[I
    :pswitch_26
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke39;->HANZI_TO_STROKE_MAP_39:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 257
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 259
    .end local v0           #array:[I
    :pswitch_27
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke40;->HANZI_TO_STROKE_MAP_40:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 260
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 262
    .end local v0           #array:[I
    :pswitch_28
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke41;->HANZI_TO_STROKE_MAP_41:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 263
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 265
    .end local v0           #array:[I
    :pswitch_29
    sget-object v6, Lcom/sec/android/app/dialertab/dialpad/MapStroke42;->HANZI_TO_STROKE_MAP_42:[[[I

    invoke-static {v6, p1}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->find([[[II)[I

    move-result-object v0

    .line 266
    .restart local v0       #array:[I
    goto/16 :goto_1

    .line 283
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .local v4, strokes:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    array-length v6, v0

    if-ge v1, v6, :cond_4

    .line 285
    aget v6, v0, v1

    int-to-char v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 287
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;->target:Ljava/lang/String;

    goto/16 :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
    .end packed-switch
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 92
    const/4 v5, 0x0

    .line 117
    :cond_0
    return-object v5

    .line 95
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v5, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 100
    .local v3, inputLength:I
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->getToken(C)Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;

    move-result-object v1

    .line 102
    .local v1, currentToken:Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 105
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 106
    .local v0, character:C
    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;->getToken(C)Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;

    move-result-object v4

    .line 107
    .local v4, token:Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;
    iget v6, v4, Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;->type:I

    packed-switch v6, :pswitch_data_0

    .line 104
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :pswitch_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 113
    :pswitch_1
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
