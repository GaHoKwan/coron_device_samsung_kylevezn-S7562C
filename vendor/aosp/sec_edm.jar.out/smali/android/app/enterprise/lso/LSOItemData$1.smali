.class final Landroid/app/enterprise/lso/LSOItemData$1;
.super Ljava/lang/Object;
.source "LSOItemData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/lso/LSOItemData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/app/enterprise/lso/LSOItemData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/lso/LSOItemData;
    .locals 7
    .parameter "source"

    .prologue
    .line 320
    const/4 v1, 0x0

    .line 323
    .local v1, itemData:Landroid/app/enterprise/lso/LSOItemData;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 324
    .local v2, sourcePos:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 325
    .local v3, type:B
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 326
    invoke-static {v3, p1}, Landroid/app/enterprise/lso/LSOItemCreator;->createItem(BLandroid/os/Parcel;)Landroid/app/enterprise/lso/LSOItemData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 331
    .end local v2           #sourcePos:I
    .end local v3           #type:B
    :goto_0
    return-object v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "LSO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in createFromParcel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Landroid/app/enterprise/lso/LSOItemData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/enterprise/lso/LSOItemData;
    .locals 1
    .parameter "size"

    .prologue
    .line 336
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Landroid/app/enterprise/lso/LSOItemData$1;->newArray(I)[Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v0

    return-object v0
.end method
