.class Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;
.super Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;
.source "TwRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetDrawableParameters"
.end annotation


# static fields
.field public static final TAG:I = 0x3


# instance fields
.field alpha:I

.field colorFilter:I

.field filterMode:Landroid/graphics/PorterDuff$Mode;

.field level:I

.field targetBackground:Z

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;IZIILandroid/graphics/PorterDuff$Mode;I)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "targetBackground"
    .parameter "alpha"
    .parameter "colorFilter"
    .parameter "mode"
    .parameter "level"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V

    .line 504
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->viewId:I

    .line 505
    iput-boolean p3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->targetBackground:Z

    .line 506
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->alpha:I

    .line 507
    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->colorFilter:I

    .line 508
    iput-object p6, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    .line 509
    iput p7, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->level:I

    .line 510
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Landroid/os/Parcel;)V
    .locals 5
    .parameter
    .parameter "parcel"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 512
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->viewId:I

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->targetBackground:Z

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->alpha:I

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->colorFilter:I

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 518
    .local v0, hasMode:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    .line 523
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->level:I

    .line 524
    return-void

    .end local v0           #hasMode:Z
    :cond_0
    move v1, v3

    .line 514
    goto :goto_0

    :cond_1
    move v0, v3

    .line 517
    goto :goto_1

    .line 521
    .restart local v0       #hasMode:Z
    :cond_2
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "root"
    .parameter "rootParent"

    .prologue
    const/4 v5, -0x1

    .line 543
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 544
    .local v1, target:Landroid/view/View;
    if-nez v1, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    const/4 v2, 0x0

    .line 548
    .local v2, targetDrawable:Landroid/graphics/drawable/Drawable;
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->targetBackground:Z

    if-eqz v3, :cond_5

    .line 549
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 555
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 557
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->alpha:I

    if-eq v3, v5, :cond_3

    .line 558
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->alpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 560
    :cond_3
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->colorFilter:I

    if-eq v3, v5, :cond_4

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_4

    .line 561
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->colorFilter:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 563
    :cond_4
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->level:I

    if-eq v3, v5, :cond_0

    .line 564
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->level:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 550
    :cond_5
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 551
    check-cast v0, Landroid/widget/ImageView;

    .line 552
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 527
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->targetBackground:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->alpha:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->colorFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 538
    :goto_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    return-void

    :cond_0
    move v0, v2

    .line 529
    goto :goto_0

    .line 536
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
