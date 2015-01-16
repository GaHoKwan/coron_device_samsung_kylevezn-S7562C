.class public Landroid/app/enterprise/lso/LSOItemText;
.super Landroid/app/enterprise/lso/LSOItemData;
.source "LSOItemText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_TEXT_SIZE:F = 0.0f

.field public static final LSO_FIELD_TEXT:I = 0x80

.field public static final LSO_FIELD_TEXT_COLOR:I = 0x100

.field public static final LSO_FIELD_TEXT_SIZE:I = 0x200

.field public static final LSO_FIELD_TEXT_STYLE:I = 0x400


# instance fields
.field private text:Ljava/lang/String;

.field private text_color:I

.field private text_size:F

.field private text_style:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->NORMAL:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    iget v0, v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->nativeVal:F

    sput v0, Landroid/app/enterprise/lso/LSOItemText;->DEFAULT_TEXT_SIZE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 72
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;-><init>(B)V

    .line 73
    iput v1, p0, Landroid/app/enterprise/lso/LSOItemText;->text_color:I

    .line 74
    iput v1, p0, Landroid/app/enterprise/lso/LSOItemText;->text_style:I

    .line 75
    sget v0, Landroid/app/enterprise/lso/LSOItemText;->DEFAULT_TEXT_SIZE:F

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemText;->text_size:F

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    .line 79
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/app/enterprise/lso/LSOItemData;-><init>(BLandroid/os/Parcel;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 83
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;-><init>(B)V

    .line 84
    invoke-virtual {p0, p1}, Landroid/app/enterprise/lso/LSOItemText;->setText(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private getTextSize(F)Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;
    .locals 1
    .parameter "fontSize"

    .prologue
    .line 109
    sget-object v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->HUGE:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    iget v0, v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->nativeVal:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 110
    sget-object v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->HUGE:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    .line 121
    :goto_0
    return-object v0

    .line 112
    :cond_0
    sget-object v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->LARGE:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    iget v0, v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->nativeVal:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 113
    sget-object v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->LARGE:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    goto :goto_0

    .line 115
    :cond_1
    sget-object v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->NORMAL:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    iget v0, v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->nativeVal:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 116
    sget-object v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->NORMAL:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    goto :goto_0

    .line 118
    :cond_2
    sget-object v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->SMALL:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    iget v0, v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->nativeVal:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    .line 119
    sget-object v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->SMALL:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    goto :goto_0

    .line 121
    :cond_3
    sget-object v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->TINY:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    goto :goto_0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemText;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Landroid/app/enterprise/lso/LSOItemText;->text_color:I

    return v0
.end method

.method public getTextSize()Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Landroid/app/enterprise/lso/LSOItemText;->text_size:F

    invoke-direct {p0, v0}, Landroid/app/enterprise/lso/LSOItemText;->getTextSize(F)Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    move-result-object v0

    return-object v0
.end method

.method public getTextSizeAsFloat()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/app/enterprise/lso/LSOItemText;->text_size:F

    return v0
.end method

.method public getTextStyle()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Landroid/app/enterprise/lso/LSOItemText;->text_style:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "parcel"

    .prologue
    const/4 v1, -0x1

    .line 162
    invoke-super {p0, p1}, Landroid/app/enterprise/lso/LSOItemData;->readFromParcel(Landroid/os/Parcel;)V

    .line 163
    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/app/enterprise/lso/LSOItemData;->readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/lso/LSOItemText;->text:Ljava/lang/String;

    .line 164
    const/16 v0, 0x100

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemText;->text_color:I

    .line 165
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemText;->text_style:I

    .line 166
    const/16 v0, 0x200

    sget v1, Landroid/app/enterprise/lso/LSOItemText;->DEFAULT_TEXT_SIZE:F

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->readFloatFromParcel(Landroid/os/Parcel;IF)F

    move-result v0

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemText;->text_size:F

    .line 167
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 134
    iput-object p1, p0, Landroid/app/enterprise/lso/LSOItemText;->text:Ljava/lang/String;

    .line 135
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 136
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 143
    iput p1, p0, Landroid/app/enterprise/lso/LSOItemText;->text_color:I

    .line 144
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 145
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "text_size"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/app/enterprise/lso/LSOItemText;->getTextSize(F)Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemText;->setTextSize(Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;)V

    .line 89
    return-void
.end method

.method public setTextSize(Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;)V
    .locals 3
    .parameter "text_size"

    .prologue
    const/16 v2, 0x200

    .line 92
    iget v0, p1, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->nativeVal:F

    sget v1, Landroid/app/enterprise/lso/LSOItemText;->DEFAULT_TEXT_SIZE:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0, v2}, Landroid/app/enterprise/lso/LSOItemData;->removeFieldFlag(I)V

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    iget v0, p1, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->nativeVal:F

    iput v0, p0, Landroid/app/enterprise/lso/LSOItemText;->text_size:F

    .line 96
    invoke-virtual {p0, v2}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    goto :goto_0
.end method

.method public setTextStyle(I)V
    .locals 1
    .parameter "text_style"

    .prologue
    .line 125
    iput p1, p0, Landroid/app/enterprise/lso/LSOItemText;->text_style:I

    .line 126
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Landroid/app/enterprise/lso/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, str:Ljava/lang/String;
    const/16 v1, 0x80

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/enterprise/lso/LSOItemText;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/enterprise/lso/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    const/16 v1, 0x100

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text_Color:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/enterprise/lso/LSOItemText;->text_color:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/enterprise/lso/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    const/16 v1, 0x400

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text_Style:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/enterprise/lso/LSOItemText;->text_style:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/enterprise/lso/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    const/16 v1, 0x200

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text_Size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/enterprise/lso/LSOItemText;->text_size:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/enterprise/lso/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    const/16 v0, 0x80

    iget-object v1, p0, Landroid/app/enterprise/lso/LSOItemText;->text:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 155
    const/16 v0, 0x100

    iget v1, p0, Landroid/app/enterprise/lso/LSOItemText;->text_color:I

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    .line 156
    const/16 v0, 0x400

    iget v1, p0, Landroid/app/enterprise/lso/LSOItemText;->text_style:I

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    .line 157
    const/16 v0, 0x200

    iget v1, p0, Landroid/app/enterprise/lso/LSOItemText;->text_size:F

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;IF)V

    .line 158
    return-void
.end method
