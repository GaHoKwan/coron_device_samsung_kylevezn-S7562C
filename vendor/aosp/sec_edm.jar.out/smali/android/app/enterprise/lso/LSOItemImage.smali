.class public Landroid/app/enterprise/lso/LSOItemImage;
.super Landroid/app/enterprise/lso/LSOItemData;
.source "LSOItemImage.java"


# static fields
.field public static final LSO_FIELD_IMAGE_PATH:I = 0x80

.field public static final LSO_FIELD_IMAGE_URL:I = 0x100

.field public static final LSO_FIELD_SCALE_TYPE:I = 0x200


# instance fields
.field private imagePath:Ljava/lang/String;

.field private pollingInterval:J

.field private scaleType:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;-><init>(B)V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemImage;->scaleType:I

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    .line 64
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/app/enterprise/lso/LSOItemData;-><init>(BLandroid/os/Parcel;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "imagePath"

    .prologue
    .line 68
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;-><init>(B)V

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/enterprise/lso/LSOItemImage;->setImagePath(Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemImage;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIntScaleType()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/app/enterprise/lso/LSOItemImage;->scaleType:I

    return v0
.end method

.method public getPollingInterval()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Landroid/app/enterprise/lso/LSOItemImage;->pollingInterval:J

    return-wide v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 3

    .prologue
    .line 101
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    .line 102
    .local v0, types:[Landroid/widget/ImageView$ScaleType;
    iget v1, p0, Landroid/app/enterprise/lso/LSOItemImage;->scaleType:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/app/enterprise/lso/LSOItemImage;->scaleType:I

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 103
    iget v1, p0, Landroid/app/enterprise/lso/LSOItemImage;->scaleType:I

    aget-object v1, v0, v1

    .line 106
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemImage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "parcel"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/enterprise/lso/LSOItemData;->readFromParcel(Landroid/os/Parcel;)V

    .line 137
    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/app/enterprise/lso/LSOItemData;->readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/lso/LSOItemImage;->imagePath:Ljava/lang/String;

    .line 138
    const/16 v0, 0x200

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemImage;->scaleType:I

    .line 139
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/lso/LSOItemImage;->url:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/lso/LSOItemImage;->pollingInterval:J

    .line 143
    :cond_0
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 1
    .parameter "imagePath"

    .prologue
    .line 73
    iput-object p1, p0, Landroid/app/enterprise/lso/LSOItemImage;->imagePath:Ljava/lang/String;

    .line 74
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 75
    return-void
.end method

.method public setScaleType(I)V
    .locals 1
    .parameter "scaleType"

    .prologue
    .line 119
    iput p1, p0, Landroid/app/enterprise/lso/LSOItemImage;->scaleType:I

    .line 120
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 121
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .parameter "scaleType"

    .prologue
    .line 114
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemImage;->scaleType:I

    .line 115
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 116
    return-void
.end method

.method public setURL(Ljava/lang/String;J)V
    .locals 2
    .parameter "url"
    .parameter "pollingPeriod"

    .prologue
    .line 82
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/enterprise/lso/LSOItemImage;->url:Ljava/lang/String;

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/enterprise/lso/LSOItemImage;->pollingInterval:J

    .line 89
    :goto_0
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 90
    return-void

    .line 86
    :cond_1
    iput-object p1, p0, Landroid/app/enterprise/lso/LSOItemImage;->url:Ljava/lang/String;

    .line 87
    iput-wide p2, p0, Landroid/app/enterprise/lso/LSOItemImage;->pollingInterval:J

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Landroid/app/enterprise/lso/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, str:Ljava/lang/String;
    const/16 v1, 0x80

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImagePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/enterprise/lso/LSOItemImage;->imagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/enterprise/lso/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    const/16 v1, 0x100

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/enterprise/lso/LSOItemImage;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PollingInterval:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/app/enterprise/lso/LSOItemImage;->pollingInterval:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/enterprise/lso/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 126
    const/16 v0, 0x80

    iget-object v1, p0, Landroid/app/enterprise/lso/LSOItemImage;->imagePath:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 127
    const/16 v0, 0x200

    iget v1, p0, Landroid/app/enterprise/lso/LSOItemImage;->scaleType:I

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    .line 128
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemImage;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-wide v0, p0, Landroid/app/enterprise/lso/LSOItemImage;->pollingInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    :cond_0
    return-void
.end method
