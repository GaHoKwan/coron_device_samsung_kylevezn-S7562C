.class public Lcom/android/contacts/util/ImageViewDrawableSetter;
.super Ljava/lang/Object;
.source "ImageViewDrawableSetter.java"


# instance fields
.field private mCompressed:[B

.field private mContactId:J

.field private mDurationInMillis:I

.field private mPreviousDrawable:Landroid/graphics/drawable/Drawable;

.field private mTarget:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContactId:J

    .line 47
    return-void
.end method

.method private decodedBitmapDrawable([B)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "compressed"

    .prologue
    .line 157
    iget-object v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 158
    .local v1, rsrc:Landroid/content/res/Resources;
    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 159
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private defaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 146
    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 147
    .local v2, resources:Landroid/content/res/Resources;
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContactId:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v1

    .line 149
    .local v1, resId:I
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 152
    :goto_0
    return-object v3

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "ImageViewDrawableSetter"

    const-string v4, "Cannot load default avatar resource."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private previousBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getCompressedImage()[B
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    return-object v0
.end method

.method public getTarget()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected setCompressedImage([B)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "compressed"

    .prologue
    .line 95
    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 106
    :cond_0
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->defaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 111
    .local v1, newDrawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    .line 114
    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 133
    .end local v1           #newDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v3

    .line 98
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    .line 106
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/contacts/util/ImageViewDrawableSetter;->decodedBitmapDrawable([B)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_0

    .line 116
    .restart local v1       #newDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    if-nez v3, :cond_5

    .line 118
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :goto_2
    iput-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    .line 133
    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    .line 121
    :cond_5
    const/4 v3, 0x2

    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 122
    .local v0, beforeAndAfter:[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v0, v3

    .line 123
    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 124
    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 125
    .local v2, transition:Landroid/graphics/drawable/TransitionDrawable;
    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_2
.end method

.method protected setTarget(Landroid/widget/ImageView;J)V
    .locals 3
    .parameter "target"
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContactId:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    .line 84
    iput-object v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    .line 85
    iput-object v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    iput-wide p2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContactId:J

    .line 88
    :cond_1
    return-void
.end method
