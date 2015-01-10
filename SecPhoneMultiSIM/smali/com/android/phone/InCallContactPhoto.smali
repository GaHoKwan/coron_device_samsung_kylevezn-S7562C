.class public Lcom/android/phone/InCallContactPhoto;
.super Landroid/widget/ImageView;
.source "InCallContactPhoto.java"


# instance fields
.field private mInsetImageView:Landroid/widget/ImageView;

.field private mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    return-void
.end method

.method private hideInset()V
    .locals 2

    .prologue
    .line 469
    const-string v0, "- hideInset()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 479
    :cond_0
    return-void
.end method

.method private isLoRes(Landroid/graphics/Bitmap;)Z
    .locals 4
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 447
    const-string v2, "is_lo_res_disable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v1

    .line 453
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 457
    .local v0, LO_RES_THRESHOLD_WIDTH:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- isLoRes: checking bitmap with width "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 523
    const-string v0, "InCallContactPhoto"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return-void
.end method

.method private showInset(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- showInset(Drawable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 491
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    :cond_0
    return-void
.end method


# virtual methods
.method public getInsetPhotoVisibility()I
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImageBitmap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 213
    invoke-direct {p0}, Lcom/android/phone/InCallContactPhoto;->hideInset()V

    .line 215
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .parameter "inputDrawable"

    .prologue
    .line 225
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setImageDrawable("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 231
    .local v6, startTime:J
    const/4 v1, 0x0

    .line 245
    .local v1, blurredBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v8, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v8, :cond_2

    .line 249
    iput-object p1, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 265
    const/4 v5, 0x0

    .line 269
    .local v5, showInsetImage:Z
    instance-of v8, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_6

    move-object v8, p1

    .line 271
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 287
    .local v4, inputBitmap:Landroid/graphics/Bitmap;
    if-nez v4, :cond_3

    .line 289
    const-string v8, "InCallContactPhoto"

    const-string v9, "setImageDrawable: null bitmap from inputDrawable.getBitmap()!"

    invoke-static {v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v4           #inputBitmap:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/4 v8, 0x1

    if-ne v5, v8, :cond_8

    .line 371
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- Show the special effect!  blurredBitmapDrawable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 379
    const-string v8, "tablet_device"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 381
    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    .end local v5           #showInsetImage:Z
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 409
    .local v2, endTime:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setImageDrawable() done: *ELAPSED* = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v2, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " msec"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 411
    return-void

    .line 295
    .end local v2           #endTime:J
    .restart local v4       #inputBitmap:Landroid/graphics/Bitmap;
    .restart local v5       #showInsetImage:Z
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/phone/InCallContactPhoto;->isLoRes(Landroid/graphics/Bitmap;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 297
    const-string v8, "- not a lo-res bitmap; no special effect."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_4
    const-string v8, "- got a lo-res bitmap; blurring..."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 311
    const-string v8, "tablet_device"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 313
    invoke-static {v4}, Lcom/android/phone/BitmapUtils;->createBlurredBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 335
    .local v0, blurredBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #blurredBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v1, v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 337
    .restart local v1       #blurredBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- Created blurredBitmapDrawable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 341
    .end local v0           #blurredBitmap:Landroid/graphics/Bitmap;
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 343
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 353
    .end local v4           #inputBitmap:Landroid/graphics/Bitmap;
    :cond_6
    const-string v8, "InCallContactPhoto"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setImageDrawable: inputDrawable \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' is not a BitmapDrawable"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 385
    :cond_7
    const v8, 0x7f020263

    invoke-super {p0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    invoke-direct {p0, p1}, Lcom/android/phone/InCallContactPhoto;->showInset(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 393
    :cond_8
    const-string v8, "- null blurredBitmapDrawable; don\'t show the special effect."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 397
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    invoke-direct {p0}, Lcom/android/phone/InCallContactPhoto;->hideInset()V

    goto/16 :goto_1
.end method

.method public setImageResource(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImageResource("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 173
    invoke-direct {p0}, Lcom/android/phone/InCallContactPhoto;->hideInset()V

    .line 175
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImageURI("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    invoke-direct {p0}, Lcom/android/phone/InCallContactPhoto;->hideInset()V

    .line 195
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 197
    return-void
.end method

.method public setInsetImageView(Landroid/widget/ImageView;)V
    .locals 0
    .parameter "imageView"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    .line 157
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 503
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 509
    invoke-direct {p0}, Lcom/android/phone/InCallContactPhoto;->hideInset()V

    .line 513
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    return-void
.end method
