.class public Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;
.super Ljava/lang/Object;
.source "LockscreenOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/lso/LockscreenOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LSOImage"
.end annotation


# instance fields
.field public bottomPosition:I

.field public filePath:Ljava/lang/String;

.field public scaleType:Landroid/widget/ImageView$ScaleType;

.field public topPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->topPosition:I

    .line 186
    const/16 v0, 0x64

    iput v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->bottomPosition:I

    .line 187
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 188
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .parameter "topPos"
    .parameter "imagePath"
    .parameter "bottomPos"

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput p1, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->topPosition:I

    .line 221
    iput p3, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->bottomPosition:I

    .line 222
    iput-object p2, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->filePath:Ljava/lang/String;

    .line 223
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 224
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILandroid/widget/ImageView$ScaleType;)V
    .locals 0
    .parameter "topPos"
    .parameter "imagePath"
    .parameter "bottomPos"
    .parameter "scaleType"

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput p1, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->topPosition:I

    .line 242
    iput p3, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->bottomPosition:I

    .line 243
    iput-object p2, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->filePath:Ljava/lang/String;

    .line 244
    iput-object p4, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 245
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "imagePath"

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->topPosition:I

    .line 201
    const/16 v0, 0x64

    iput v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->bottomPosition:I

    .line 202
    iput-object p1, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->filePath:Ljava/lang/String;

    .line 203
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 204
    return-void
.end method
