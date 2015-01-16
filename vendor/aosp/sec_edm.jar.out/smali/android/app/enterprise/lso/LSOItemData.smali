.class public abstract Landroid/app/enterprise/lso/LSOItemData;
.super Ljava/lang/Object;
.source "LSOItemData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/lso/LSOItemData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_FLOAT_VALUE:F = 0.0f

.field public static final DEFAULT_INT_VALUE:I = -0x1

.field public static final DEFAULT_WH_VALUE:I = -0x63

.field public static final LSO_FIELD_ATTRIBUTES:I = 0x40

.field public static final LSO_FIELD_BG_COLOR:I = 0x10

.field public static final LSO_FIELD_GRAVITY:I = 0x20

.field public static final LSO_FIELD_ITEMID:I = 0x1

.field public static final LSO_FIELD_LAST:I = 0x80

.field public static final LSO_FIELD_PARAM_HEIGHT:I = 0x4

.field public static final LSO_FIELD_PARAM_WEIGHT:I = 0x8

.field public static final LSO_FIELD_PARAM_WIDTH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LSO"


# instance fields
.field private attrs:Landroid/app/enterprise/lso/LSOAttributeSet;

.field private bg_color:I

.field private gravity:I

.field private height:I

.field private itemId:Ljava/lang/String;

.field private modifiedFields:I

.field private type:B

.field private weight:F

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 316
    new-instance v0, Landroid/app/enterprise/lso/LSOItemData$1;

    invoke-direct {v0}, Landroid/app/enterprise/lso/LSOItemData$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/lso/LSOItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, -0x1

    const/16 v1, -0x63

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemData;->modifiedFields:I

    .line 89
    iput-byte p1, p0, Landroid/app/enterprise/lso/LSOItemData;->type:B

    .line 90
    new-instance v0, Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-direct {v0}, Landroid/app/enterprise/lso/LSOAttributeSet;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/lso/LSOItemData;->attrs:Landroid/app/enterprise/lso/LSOAttributeSet;

    .line 91
    iput v1, p0, Landroid/app/enterprise/lso/LSOItemData;->width:I

    .line 92
    iput v1, p0, Landroid/app/enterprise/lso/LSOItemData;->height:I

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemData;->weight:F

    .line 94
    iput v2, p0, Landroid/app/enterprise/lso/LSOItemData;->bg_color:I

    .line 95
    iput v2, p0, Landroid/app/enterprise/lso/LSOItemData;->gravity:I

    .line 96
    return-void
.end method

.method protected constructor <init>(BLandroid/os/Parcel;)V
    .locals 1
    .parameter "type"
    .parameter "parcel"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemData;->modifiedFields:I

    .line 101
    iput-byte p1, p0, Landroid/app/enterprise/lso/LSOItemData;->type:B

    .line 102
    new-instance v0, Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-direct {v0}, Landroid/app/enterprise/lso/LSOAttributeSet;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/lso/LSOItemData;->attrs:Landroid/app/enterprise/lso/LSOAttributeSet;

    .line 103
    invoke-virtual {p0, p2}, Landroid/app/enterprise/lso/LSOItemData;->readFromParcel(Landroid/os/Parcel;)V

    .line 104
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public getAttrs()Landroid/app/enterprise/lso/LSOAttributeSet;
    .locals 2

    .prologue
    .line 257
    new-instance v0, Landroid/app/enterprise/lso/LSOAttributeSet;

    iget-object v1, p0, Landroid/app/enterprise/lso/LSOItemData;->attrs:Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-direct {v0, v1}, Landroid/app/enterprise/lso/LSOAttributeSet;-><init>(Landroid/app/enterprise/lso/LSOAttributeSet;)V

    .line 258
    .local v0, cv:Landroid/app/enterprise/lso/LSOAttributeSet;
    return-object v0
.end method

.method public getBgColor()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Landroid/app/enterprise/lso/LSOItemData;->bg_color:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Landroid/app/enterprise/lso/LSOItemData;->gravity:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Landroid/app/enterprise/lso/LSOItemData;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemData;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()B
    .locals 1

    .prologue
    .line 108
    iget-byte v0, p0, Landroid/app/enterprise/lso/LSOItemData;->type:B

    return v0
.end method

.method public getUpdatedFields()[I
    .locals 8

    .prologue
    .line 290
    iget v7, p0, Landroid/app/enterprise/lso/LSOItemData;->modifiedFields:I

    if-nez v7, :cond_1

    .line 291
    const/4 v3, 0x0

    .line 313
    :cond_0
    return-object v3

    .line 294
    :cond_1
    iget v6, p0, Landroid/app/enterprise/lso/LSOItemData;->modifiedFields:I

    .line 295
    .local v6, tempModifiedFields:I
    const/4 v4, 0x0

    .line 297
    .local v4, numModifiedFields:I
    :goto_0
    if-lez v6, :cond_2

    .line 298
    add-int/lit8 v4, v4, 0x1

    .line 299
    add-int/lit8 v7, v6, -0x1

    and-int/2addr v6, v7

    goto :goto_0

    .line 302
    :cond_2
    new-array v3, v4, [I

    .line 303
    .local v3, lst:[I
    iget v6, p0, Landroid/app/enterprise/lso/LSOItemData;->modifiedFields:I

    .line 305
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_1
    const/16 v7, 0x1f

    if-gt v0, v7, :cond_0

    if-lez v6, :cond_0

    if-ge v2, v4, :cond_0

    .line 306
    const/4 v7, 0x1

    shl-int v5, v7, v0

    .line 307
    .local v5, temp:I
    and-int v7, v6, v5

    if-ne v7, v5, :cond_3

    .line 308
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .restart local v1       #j:I
    aput v5, v3, v2

    .line 310
    xor-int/lit8 v7, v5, -0x1

    and-int/2addr v6, v7

    .line 305
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_1

    :cond_3
    move v1, v2

    .end local v2           #j:I
    .restart local v1       #j:I
    goto :goto_2
.end method

.method public getWeight()F
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Landroid/app/enterprise/lso/LSOItemData;->weight:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Landroid/app/enterprise/lso/LSOItemData;->width:I

    return v0
.end method

.method public isFieldUpdated(I)Z
    .locals 1
    .parameter "field"

    .prologue
    .line 284
    iget v0, p0, Landroid/app/enterprise/lso/LSOItemData;->modifiedFields:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected readBoolFromParcel(Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "parcel"
    .parameter "field"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 412
    invoke-virtual {p0, p2}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v0, v2, :cond_0

    .line 416
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 413
    goto :goto_0

    :cond_1
    move v0, v1

    .line 416
    goto :goto_0
.end method

.method protected readByteFromParcel(Landroid/os/Parcel;I)B
    .locals 1
    .parameter "parcel"
    .parameter "field"

    .prologue
    .line 421
    invoke-virtual {p0, p2}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected readFloatFromParcel(Landroid/os/Parcel;I)F
    .locals 1
    .parameter "parcel"
    .parameter "field"

    .prologue
    .line 439
    invoke-virtual {p0, p2}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected readFloatFromParcel(Landroid/os/Parcel;IF)F
    .locals 1
    .parameter "parcel"
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 448
    invoke-virtual {p0, p2}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p3

    .line 452
    .end local p3
    :cond_0
    return p3
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "parcel"

    .prologue
    const/4 v2, -0x1

    const/16 v1, -0x63

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/app/enterprise/lso/LSOItemData;->type:B

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemData;->modifiedFields:I

    .line 399
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/enterprise/lso/LSOItemData;->readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/lso/LSOItemData;->itemId:Ljava/lang/String;

    .line 400
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemData;->width:I

    .line 401
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemData;->height:I

    .line 402
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->readFloatFromParcel(Landroid/os/Parcel;IF)F

    move-result v0

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemData;->weight:F

    .line 403
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v2}, Landroid/app/enterprise/lso/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemData;->bg_color:I

    .line 404
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0, v2}, Landroid/app/enterprise/lso/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemData;->gravity:I

    .line 405
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-static {p1}, Landroid/app/enterprise/lso/LSOAttributeSet;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/lso/LSOItemData;->attrs:Landroid/app/enterprise/lso/LSOAttributeSet;

    .line 408
    :cond_0
    return-void
.end method

.method protected readIntFromParcel(Landroid/os/Parcel;II)I
    .locals 1
    .parameter "parcel"
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 430
    invoke-virtual {p0, p2}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 434
    .end local p3
    :cond_0
    return p3
.end method

.method protected readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 1
    .parameter "parcel"
    .parameter "field"

    .prologue
    .line 457
    invoke-virtual {p0, p2}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 461
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected removeFieldFlag(I)V
    .locals 2
    .parameter "field"

    .prologue
    .line 274
    iget v0, p0, Landroid/app/enterprise/lso/LSOItemData;->modifiedFields:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemData;->modifiedFields:I

    .line 275
    return-void
.end method

.method public resetAttrs()V
    .locals 1

    .prologue
    .line 263
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 264
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemData;->attrs:Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-virtual {v0}, Landroid/app/enterprise/lso/LSOAttributeSet;->clear()V

    .line 265
    return-void
.end method

.method public resetUpdatedFields()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemData;->modifiedFields:I

    .line 280
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "attrName"
    .parameter "attrValue"

    .prologue
    .line 245
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemData;->attrs:Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/lso/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 246
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 247
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Byte;)V
    .locals 1
    .parameter "attrName"
    .parameter "attrValue"

    .prologue
    .line 209
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemData;->attrs:Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/lso/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 210
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 211
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 1
    .parameter "attrName"
    .parameter "attrValue"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemData;->attrs:Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/lso/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 240
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 241
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 1
    .parameter "attrName"
    .parameter "attrValue"

    .prologue
    .line 233
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemData;->attrs:Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/lso/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 234
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 235
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .parameter "attrName"
    .parameter "attrValue"

    .prologue
    .line 221
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemData;->attrs:Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/lso/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 223
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .parameter "attrName"
    .parameter "attrValue"

    .prologue
    .line 227
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemData;->attrs:Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/lso/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 228
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 229
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Short;)V
    .locals 1
    .parameter "attrName"
    .parameter "attrValue"

    .prologue
    .line 215
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemData;->attrs:Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/lso/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 216
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 217
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "attrName"
    .parameter "attrValue"

    .prologue
    .line 203
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemData;->attrs:Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/lso/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 205
    return-void
.end method

.method public setAttribute(Ljava/lang/String;[B)V
    .locals 1
    .parameter "attrName"
    .parameter "attrValue"

    .prologue
    .line 251
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemData;->attrs:Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/lso/LSOAttributeSet;->put(Ljava/lang/String;[B)V

    .line 252
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 253
    return-void
.end method

.method public setAttrs(Landroid/app/enterprise/lso/LSOAttributeSet;)V
    .locals 1
    .parameter "attrs"

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemData;->attrs:Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-virtual {v0}, Landroid/app/enterprise/lso/LSOAttributeSet;->clear()V

    .line 197
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemData;->attrs:Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-virtual {v0, p1}, Landroid/app/enterprise/lso/LSOAttributeSet;->putAll(Landroid/app/enterprise/lso/LSOAttributeSet;)V

    .line 198
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    goto :goto_0
.end method

.method public setBgColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 181
    iput p1, p0, Landroid/app/enterprise/lso/LSOItemData;->bg_color:I

    .line 182
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 183
    return-void
.end method

.method public setDimension(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Landroid/app/enterprise/lso/LSOItemData;->setWidth(I)V

    .line 158
    invoke-virtual {p0, p2}, Landroid/app/enterprise/lso/LSOItemData;->setHeight(I)V

    .line 159
    return-void
.end method

.method public setDimension(IIF)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "weight"

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Landroid/app/enterprise/lso/LSOItemData;->setWidth(I)V

    .line 164
    invoke-virtual {p0, p2}, Landroid/app/enterprise/lso/LSOItemData;->setHeight(I)V

    .line 165
    invoke-virtual {p0, p3}, Landroid/app/enterprise/lso/LSOItemData;->setWeight(F)V

    .line 166
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 170
    iput p1, p0, Landroid/app/enterprise/lso/LSOItemData;->gravity:I

    .line 171
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 172
    return-void
.end method

.method public setHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 135
    iput p1, p0, Landroid/app/enterprise/lso/LSOItemData;->height:I

    .line 136
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 137
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .parameter "itemId"

    .prologue
    .line 113
    iput-object p1, p0, Landroid/app/enterprise/lso/LSOItemData;->itemId:Ljava/lang/String;

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 115
    return-void
.end method

.method public setWeight(F)V
    .locals 1
    .parameter "weight"

    .prologue
    .line 151
    iput p1, p0, Landroid/app/enterprise/lso/LSOItemData;->weight:F

    .line 152
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 153
    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 124
    iput p1, p0, Landroid/app/enterprise/lso/LSOItemData;->width:I

    .line 125
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 467
    const-string v0, ""

    .line 469
    .local v0, str:Ljava/lang/String;
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ItemId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/enterprise/lso/LSOItemData;->itemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/enterprise/lso/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/enterprise/lso/LSOItemData;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/enterprise/lso/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/enterprise/lso/LSOItemData;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/enterprise/lso/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Weight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/enterprise/lso/LSOItemData;->weight:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/enterprise/lso/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    const/16 v1, 0x10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BG_Color:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/enterprise/lso/LSOItemData;->bg_color:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/enterprise/lso/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gravity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/enterprise/lso/LSOItemData;->gravity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/enterprise/lso/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    const/16 v1, 0x40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attributes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/enterprise/lso/LSOItemData;->attrs:Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-virtual {v3}, Landroid/app/enterprise/lso/LSOAttributeSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/enterprise/lso/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    return-object v0
.end method

.method protected toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "field"
    .parameter "value"

    .prologue
    .line 482
    invoke-virtual {p0, p2}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 486
    .end local p1
    :cond_0
    return-object p1
.end method

.method protected updateFieldFlag(I)V
    .locals 1
    .parameter "field"

    .prologue
    .line 269
    iget v0, p0, Landroid/app/enterprise/lso/LSOItemData;->modifiedFields:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemData;->modifiedFields:I

    .line 270
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 347
    iget-byte v0, p0, Landroid/app/enterprise/lso/LSOItemData;->type:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 348
    iget v0, p0, Landroid/app/enterprise/lso/LSOItemData;->modifiedFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/app/enterprise/lso/LSOItemData;->itemId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 350
    const/4 v0, 0x2

    iget v1, p0, Landroid/app/enterprise/lso/LSOItemData;->width:I

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    .line 351
    const/4 v0, 0x4

    iget v1, p0, Landroid/app/enterprise/lso/LSOItemData;->height:I

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    .line 352
    const/16 v0, 0x8

    iget v1, p0, Landroid/app/enterprise/lso/LSOItemData;->weight:F

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;IF)V

    .line 353
    const/16 v0, 0x10

    iget v1, p0, Landroid/app/enterprise/lso/LSOItemData;->bg_color:I

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    .line 354
    const/16 v0, 0x20

    iget v1, p0, Landroid/app/enterprise/lso/LSOItemData;->gravity:I

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    .line 355
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemData;->attrs:Landroid/app/enterprise/lso/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/lso/LSOAttributeSet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 358
    :cond_0
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;IB)V
    .locals 1
    .parameter "parcel"
    .parameter "field"
    .parameter "val"

    .prologue
    .line 369
    invoke-virtual {p0, p2}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 372
    :cond_0
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;IF)V
    .locals 1
    .parameter "parcel"
    .parameter "field"
    .parameter "val"

    .prologue
    .line 383
    invoke-virtual {p0, p2}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 386
    :cond_0
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;II)V
    .locals 1
    .parameter "parcel"
    .parameter "field"
    .parameter "val"

    .prologue
    .line 376
    invoke-virtual {p0, p2}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    :cond_0
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V
    .locals 1
    .parameter "parcel"
    .parameter "field"
    .parameter "val"

    .prologue
    .line 390
    invoke-virtual {p0, p2}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    :cond_0
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;IZ)V
    .locals 1
    .parameter "parcel"
    .parameter "field"
    .parameter "val"

    .prologue
    .line 362
    invoke-virtual {p0, p2}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 365
    :cond_0
    return-void

    .line 363
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
