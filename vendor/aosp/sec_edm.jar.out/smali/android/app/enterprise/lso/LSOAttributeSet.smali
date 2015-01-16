.class public final Landroid/app/enterprise/lso/LSOAttributeSet;
.super Ljava/lang/Object;
.source "LSOAttributeSet.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/lso/LSOAttributeSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "LSO"


# instance fields
.field private mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 493
    new-instance v0, Landroid/app/enterprise/lso/LSOAttributeSet$1;

    invoke-direct {v0}, Landroid/app/enterprise/lso/LSOAttributeSet$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/lso/LSOAttributeSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    const/high16 v1, 0x3f80

    invoke-direct {v0, p1, v1}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/app/enterprise/lso/LSOAttributeSet;)V
    .locals 2
    .parameter "from"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    .line 100
    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/lso/LSOAttributeSet;
    .locals 2
    .parameter "in"

    .prologue
    .line 570
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 571
    .local v0, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-direct {v1, v0}, Landroid/app/enterprise/lso/LSOAttributeSet;-><init>(Ljava/util/HashMap;)V

    return-object v1
.end method

.method public static fromByteArray([B)Landroid/app/enterprise/lso/LSOAttributeSet;
    .locals 11
    .parameter "bytes"

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, byteIn:Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 550
    .local v3, in:Ljava/io/ObjectInputStream;
    const/4 v5, 0x0

    .line 553
    .local v5, lsoAttrSet:Landroid/app/enterprise/lso/LSOAttributeSet;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 554
    .end local v0           #byteIn:Ljava/io/ByteArrayInputStream;
    .local v1, byteIn:Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 555
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .local v4, in:Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 556
    .local v7, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-direct {v6, v7}, Landroid/app/enterprise/lso/LSOAttributeSet;-><init>(Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v5           #lsoAttrSet:Landroid/app/enterprise/lso/LSOAttributeSet;
    .local v6, lsoAttrSet:Landroid/app/enterprise/lso/LSOAttributeSet;
    move-object v5, v6

    .end local v6           #lsoAttrSet:Landroid/app/enterprise/lso/LSOAttributeSet;
    .restart local v5       #lsoAttrSet:Landroid/app/enterprise/lso/LSOAttributeSet;
    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .line 563
    .end local v1           #byteIn:Ljava/io/ByteArrayInputStream;
    .end local v7           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v0       #byteIn:Ljava/io/ByteArrayInputStream;
    :goto_0
    return-object v5

    .line 557
    :catch_0
    move-exception v2

    .line 558
    .local v2, e:Ljava/io/IOException;
    :goto_1
    const-string v8, "LSO"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 559
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 560
    .local v2, e:Ljava/lang/ClassNotFoundException;
    :goto_2
    const-string v8, "LSO"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ClassNotFound: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 559
    .end local v0           #byteIn:Ljava/io/ByteArrayInputStream;
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    .restart local v1       #byteIn:Ljava/io/ByteArrayInputStream;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1           #byteIn:Ljava/io/ByteArrayInputStream;
    .restart local v0       #byteIn:Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .end local v0           #byteIn:Ljava/io/ByteArrayInputStream;
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #byteIn:Ljava/io/ByteArrayInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #byteIn:Ljava/io/ByteArrayInputStream;
    .restart local v0       #byteIn:Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .line 557
    .end local v0           #byteIn:Ljava/io/ByteArrayInputStream;
    .restart local v1       #byteIn:Ljava/io/ByteArrayInputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #byteIn:Ljava/io/ByteArrayInputStream;
    .restart local v0       #byteIn:Ljava/io/ByteArrayInputStream;
    goto :goto_1

    .end local v0           #byteIn:Ljava/io/ByteArrayInputStream;
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #byteIn:Ljava/io/ByteArrayInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #byteIn:Ljava/io/ByteArrayInputStream;
    .restart local v0       #byteIn:Ljava/io/ByteArrayInputStream;
    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 246
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 255
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 104
    instance-of v0, p1, Landroid/app/enterprise/lso/LSOAttributeSet;

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 107
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    check-cast p1, Landroid/app/enterprise/lso/LSOAttributeSet;

    .end local p1
    iget-object v1, p1, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 266
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .parameter "key"

    .prologue
    .line 444
    iget-object v2, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 446
    .local v1, value:Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .end local v1           #value:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 447
    .restart local v1       #value:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 448
    .local v0, e:Ljava/lang/ClassCastException;
    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 449
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 450
    :cond_0
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 451
    check-cast v1, Ljava/lang/Number;

    .end local v1           #value:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 453
    .restart local v1       #value:Ljava/lang/Object;
    :cond_2
    const-string v2, "LSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot cast value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to a Boolean: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAsByte(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 8
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    .line 366
    iget-object v4, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 368
    .local v3, value:Ljava/lang/Object;
    if-eqz v3, :cond_0

    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    move-object v5, v4

    .line 379
    :goto_1
    return-object v5

    :cond_0
    move-object v4, v5

    .line 368
    goto :goto_0

    .line 369
    :catch_0
    move-exception v1

    .line 370
    .local v1, e:Ljava/lang/ClassCastException;
    instance-of v4, v3, Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 372
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto :goto_1

    .line 373
    :catch_1
    move-exception v2

    .line 374
    .local v2, e2:Ljava/lang/NumberFormatException;
    const-string v4, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse Byte value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 378
    .end local v2           #e2:Ljava/lang/NumberFormatException;
    :cond_1
    const-string v4, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot cast value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to a Byte: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getAsByteArray(Ljava/lang/String;)[B
    .locals 2
    .parameter "key"

    .prologue
    .line 467
    iget-object v1, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 468
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 469
    check-cast v0, [B

    .end local v0           #value:Ljava/lang/Object;
    check-cast v0, [B

    .line 471
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 8
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    .line 392
    iget-object v4, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 394
    .local v3, value:Ljava/lang/Object;
    if-eqz v3, :cond_0

    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    move-object v5, v4

    .line 405
    :goto_1
    return-object v5

    :cond_0
    move-object v4, v5

    .line 394
    goto :goto_0

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, e:Ljava/lang/ClassCastException;
    instance-of v4, v3, Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 398
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto :goto_1

    .line 399
    :catch_1
    move-exception v2

    .line 400
    .local v2, e2:Ljava/lang/NumberFormatException;
    const-string v4, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse Double value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 404
    .end local v2           #e2:Ljava/lang/NumberFormatException;
    :cond_1
    const-string v4, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot cast value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to a Double: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getAsFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 8
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    .line 418
    iget-object v4, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 420
    .local v3, value:Ljava/lang/Object;
    if-eqz v3, :cond_0

    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    move-object v5, v4

    .line 431
    :goto_1
    return-object v5

    :cond_0
    move-object v4, v5

    .line 420
    goto :goto_0

    .line 421
    :catch_0
    move-exception v1

    .line 422
    .local v1, e:Ljava/lang/ClassCastException;
    instance-of v4, v3, Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 424
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto :goto_1

    .line 425
    :catch_1
    move-exception v2

    .line 426
    .local v2, e2:Ljava/lang/NumberFormatException;
    const-string v4, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse Float value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 430
    .end local v2           #e2:Ljava/lang/NumberFormatException;
    :cond_1
    const-string v4, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot cast value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to a Float: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    .line 314
    iget-object v4, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 316
    .local v3, value:Ljava/lang/Object;
    if-eqz v3, :cond_0

    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    move-object v5, v4

    .line 327
    :goto_1
    return-object v5

    :cond_0
    move-object v4, v5

    .line 316
    goto :goto_0

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, e:Ljava/lang/ClassCastException;
    instance-of v4, v3, Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 320
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto :goto_1

    .line 321
    :catch_1
    move-exception v2

    .line 322
    .local v2, e2:Ljava/lang/NumberFormatException;
    const-string v4, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse Integer value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 326
    .end local v2           #e2:Ljava/lang/NumberFormatException;
    :cond_1
    const-string v4, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot cast value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to a Integer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getAsLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 8
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    .line 288
    iget-object v4, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 290
    .local v3, value:Ljava/lang/Object;
    if-eqz v3, :cond_0

    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    move-object v5, v4

    .line 301
    :goto_1
    return-object v5

    :cond_0
    move-object v4, v5

    .line 290
    goto :goto_0

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, e:Ljava/lang/ClassCastException;
    instance-of v4, v3, Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 294
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto :goto_1

    .line 295
    :catch_1
    move-exception v2

    .line 296
    .local v2, e2:Ljava/lang/NumberFormatException;
    const-string v4, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse Long value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 300
    .end local v2           #e2:Ljava/lang/NumberFormatException;
    :cond_1
    const-string v4, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot cast value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to a Long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getAsShort(Ljava/lang/String;)Ljava/lang/Short;
    .locals 8
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    .line 340
    iget-object v4, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 342
    .local v3, value:Ljava/lang/Object;
    if-eqz v3, :cond_0

    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->shortValue()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    move-object v5, v4

    .line 353
    :goto_1
    return-object v5

    :cond_0
    move-object v4, v5

    .line 342
    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, e:Ljava/lang/ClassCastException;
    instance-of v4, v3, Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 346
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto :goto_1

    .line 347
    :catch_1
    move-exception v2

    .line 348
    .local v2, e2:Ljava/lang/NumberFormatException;
    const-string v4, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse Short value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 352
    .end local v2           #e2:Ljava/lang/NumberFormatException;
    :cond_1
    const-string v4, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot cast value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to a Short: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 276
    iget-object v1, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 277
    .local v0, value:Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 201
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Byte;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 141
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 191
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 181
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 161
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 171
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Short;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 151
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 122
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 211
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public putAll(Landroid/app/enterprise/lso/LSOAttributeSet;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 132
    return-void
.end method

.method public putNull(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 220
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 8

    .prologue
    .line 530
    const/4 v0, 0x0

    .line 531
    .local v0, byteOut:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 534
    .local v3, out:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .end local v0           #byteOut:Ljava/io/ByteArrayOutputStream;
    .local v1, byteOut:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 536
    .end local v3           #out:Ljava/io/ObjectOutputStream;
    .local v4, out:Ljava/io/ObjectOutputStream;
    :try_start_2
    iget-object v5, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .end local v4           #out:Ljava/io/ObjectOutputStream;
    .restart local v3       #out:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 541
    .end local v1           #byteOut:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #byteOut:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 537
    :catch_0
    move-exception v2

    .line 538
    .local v2, e:Ljava/io/IOException;
    :goto_1
    const-string v5, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 537
    .end local v0           #byteOut:Ljava/io/ByteArrayOutputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #byteOut:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #byteOut:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #byteOut:Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .end local v0           #byteOut:Ljava/io/ByteArrayOutputStream;
    .end local v3           #out:Ljava/io/ObjectOutputStream;
    .restart local v1       #byteOut:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #out:Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4           #out:Ljava/io/ObjectOutputStream;
    .restart local v3       #out:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1           #byteOut:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #byteOut:Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 521
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 523
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 526
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public valueSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 508
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOAttributeSet;->mValues:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 509
    return-void
.end method
