.class public Lcom/android/mms/ui/SearchListItem;
.super Landroid/widget/LinearLayout;
.source "SearchListItem.java"


# static fields
.field private static final BUBBLE_LIST_ORDER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/SearchListListItem"

.field private static final THREAD_LIST_ORDER:I

.field private static mDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private invisibleView:Landroid/view/View;

.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mBubbleAddress:Landroid/widget/TextView;

.field private mBubbleDateView:Landroid/widget/TextView;

.field private mBubbleLayout:Landroid/widget/LinearLayout;

.field private mBubbleListLayout:Landroid/widget/LinearLayout;

.field private mBubbleRootLayout:Landroid/widget/RelativeLayout;

.field private mBubbleText:Landroid/widget/TextView;

.field mClickHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDateView:Landroid/widget/TextView;

.field private mLastThreadIndex:J

.field private mLeftDateAndIcons:Landroid/widget/LinearLayout;

.field private mListDivider:Landroid/view/View;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRecipients:Lcom/android/mms/data/ContactList;

.field private mRightDateAndIcons:Landroid/widget/LinearLayout;

.field private mRootLayout:Landroid/view/View;

.field private mSearchString:Ljava/lang/String;

.field private mSlideNumber:Landroid/widget/TextView;

.field private mThreadAddress:Landroid/widget/TextView;

.field private mThreadLayout:Landroid/widget/LinearLayout;

.field private mThreadSnippet:Landroid/widget/TextView;

.field private visibleView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/SearchListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/SearchListItem;->mLastThreadIndex:J

    .line 81
    iput-object v2, p0, Lcom/android/mms/ui/SearchListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .line 82
    iput-object v2, p0, Lcom/android/mms/ui/SearchListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 348
    new-instance v0, Lcom/android/mms/ui/SearchListItem$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchListItem$1;-><init>(Lcom/android/mms/ui/SearchListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 552
    new-instance v0, Lcom/android/mms/ui/SearchListItem$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchListItem$2;-><init>(Lcom/android/mms/ui/SearchListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchListItem;->mClickHandler:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;

    .line 96
    sget-object v0, Lcom/android/mms/ui/SearchListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020247

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/SearchListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 99
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SearchListItem;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SearchListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SearchListItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/SearchListItem;->mSearchString:Ljava/lang/String;

    return-object v0
.end method

.method private drawLeftStatusIndicator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "titleString"
    .parameter "subtitleString"

    .prologue
    const/4 v5, -0x2

    .line 277
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 278
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    const-string v7, "type"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 281
    .local v1, mMessageType:I
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchListItem;->getTransportType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "wpm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 282
    const/4 v1, 0x1

    .line 284
    :cond_0
    const/4 v5, 0x1

    if-ne v1, v5, :cond_4

    .line 285
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 286
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem;->mBubbleListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    if-nez v5, :cond_1

    .line 288
    const v5, 0x7f0e016a

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/mms/ui/SearchListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 289
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    const/16 v6, 0x53

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 291
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/mms/ui/SearchListItem;->visibleView:Landroid/view/View;

    .line 292
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/mms/ui/SearchListItem;->invisibleView:Landroid/view/View;

    .line 303
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem;->visibleView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 304
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem;->visibleView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem;->visibleView:Landroid/view/View;

    const v6, 0x7f0e0155

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/mms/ui/SearchListItem;->mBubbleDateView:Landroid/widget/TextView;

    .line 308
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem;->invisibleView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 309
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem;->invisibleView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v3

    .line 312
    .local v3, styleReceiveIndex:I
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleSentStyle(Landroid/content/Context;)I

    move-result v4

    .line 313
    .local v4, styleSendIndex:I
    const/4 v2, 0x0

    .line 315
    .local v2, resourceId:I
    packed-switch v1, :pswitch_data_0

    .line 326
    const/4 v5, 0x5

    if-ne v1, v5, :cond_6

    .line 327
    sget-object v5, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    aget v2, v5, v4

    .line 333
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 334
    return-void

    .line 295
    .end local v2           #resourceId:I
    .end local v3           #styleReceiveIndex:I
    .end local v4           #styleSendIndex:I
    :cond_4
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 296
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem;->mBubbleListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    if-nez v5, :cond_5

    .line 298
    const v5, 0x7f0e015e

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/mms/ui/SearchListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .line 299
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/mms/ui/SearchListItem;->visibleView:Landroid/view/View;

    .line 300
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/mms/ui/SearchListItem;->invisibleView:Landroid/view/View;

    goto :goto_0

    .line 317
    .restart local v2       #resourceId:I
    .restart local v3       #styleReceiveIndex:I
    .restart local v4       #styleSendIndex:I
    :pswitch_0
    sget-object v5, Lcom/android/mms/ui/MessageListItem;->BG_INBOX:[I

    aget v2, v5, v3

    .line 318
    goto :goto_1

    .line 320
    :pswitch_1
    sget-object v5, Lcom/android/mms/ui/MessageListItem;->BG_SENT:[I

    aget v2, v5, v4

    .line 321
    goto :goto_1

    .line 329
    :cond_6
    sget-object v5, Lcom/android/mms/ui/MessageListItem;->BG_SENT:[I

    aget v2, v5, v4

    goto :goto_1

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private formatAddress(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "highlight"
    .parameter "address"

    .prologue
    const/4 v0, 0x0

    .line 376
    new-array v2, v0, [I

    .line 377
    .local v2, smileyStart:[I
    new-array v3, v0, [I

    .line 379
    .local v3, smileyEnd:[I
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 380
    .local v4, buf:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v4, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 381
    iget-object v0, p0, Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;

    const-string v5, "Mms/SearchListListItem"

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/util/UIUtils;->highlightMessage(Landroid/content/Context;Ljava/util/regex/Pattern;[I[ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 383
    return-object v4
.end method

.method private getSlideNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "text"

    .prologue
    .line 511
    const/4 v5, 0x0

    .line 512
    .local v5, slidenumber:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    iget-object v12, p0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    const-string v13, "_id"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 513
    .local v2, msgId:J
    const/4 v6, 0x0

    .line 515
    .local v6, slideshow:Lcom/android/mms/model/SlideshowModel;
    :try_start_0
    iget-object v11, p0, Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 519
    :goto_0
    if-eqz v6, :cond_1

    .line 520
    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v10

    .line 522
    .local v10, totalSlides:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v10, :cond_1

    .line 523
    invoke-virtual {v6, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 524
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    const/4 v8, 0x0

    .line 525
    .local v8, textString:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 526
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v7

    .line 527
    .local v7, textModel:Lcom/android/mms/model/TextModel;
    invoke-virtual {v7}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v8

    .line 528
    add-int/lit8 v0, v1, 0x1

    .line 530
    .local v0, current_slide:I
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 531
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .local v9, textToSpannify:Ljava/lang/StringBuilder;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    .line 544
    .end local v0           #current_slide:I
    .end local v1           #i:I
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    .end local v7           #textModel:Lcom/android/mms/model/TextModel;
    .end local v8           #textString:Ljava/lang/String;
    .end local v9           #textToSpannify:Ljava/lang/StringBuilder;
    .end local v10           #totalSlides:I
    :goto_2
    return-object v11

    .line 522
    .restart local v1       #i:I
    .restart local v4       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v8       #textString:Ljava/lang/String;
    .restart local v10       #totalSlides:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 544
    .end local v1           #i:I
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    .end local v8           #textString:Ljava/lang/String;
    .end local v10           #totalSlides:I
    :cond_1
    const/4 v11, 0x0

    goto :goto_2

    .line 516
    :catch_0
    move-exception v11

    goto :goto_0
.end method

.method private setBubbleTextColor()V
    .locals 3

    .prologue
    .line 369
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020376

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 371
    .local v0, textColor:I
    iget-object v1, p0, Lcom/android/mms/ui/SearchListItem;->mBubbleAddress:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 372
    iget-object v1, p0, Lcom/android/mms/ui/SearchListItem;->mBubbleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    return-void
.end method

.method private updateAvatarView(Lcom/android/mms/data/ContactList;Z)V
    .locals 8
    .parameter "recipients"
    .parameter "isVisible"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 462
    if-nez p2, :cond_0

    .line 463
    iget-object v3, p0, Lcom/android/mms/ui/SearchListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/SearchListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 472
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 473
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 474
    .local v1, contact:Lcom/android/mms/data/Contact;
    iget-object v3, p0, Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/mms/ui/SearchListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 475
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, number:Ljava/lang/String;
    const-string v3, "CBmessages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 478
    iget-object v3, p0, Lcom/android/mms/ui/SearchListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 479
    iget-object v3, p0, Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02023c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 505
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #number:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/SearchListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 507
    iget-object v3, p0, Lcom/android/mms/ui/SearchListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 480
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    .restart local v2       #number:Ljava/lang/String;
    :cond_1
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 481
    iget-object v3, p0, Lcom/android/mms/ui/SearchListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 482
    iget-object v3, p0, Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02024f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 484
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 485
    iget-object v3, p0, Lcom/android/mms/ui/SearchListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 488
    :cond_3
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 489
    iget-object v3, p0, Lcom/android/mms/ui/SearchListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v2, v6}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_1

    .line 492
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 493
    iget-object v3, p0, Lcom/android/mms/ui/SearchListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v2, v6}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_1

    .line 495
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/SearchListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 501
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #number:Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020244

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method


# virtual methods
.method public bind(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/util/regex/Pattern;)V
    .locals 17
    .parameter "context"
    .parameter "cursor"
    .parameter "searchString"
    .parameter "highlight"

    .prologue
    .line 128
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SearchListItem;->mSearchString:Ljava/lang/String;

    .line 129
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    .line 131
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v13

    if-nez v13, :cond_0

    .line 132
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 134
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    const-string v15, "listorder"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 135
    .local v7, mListOrder:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 136
    .local v3, current_index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mRootLayout:Landroid/view/View;

    invoke-virtual {v13, v3}, Landroid/view/View;->setId(I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    const-string v15, "display_recipient_ids"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 139
    .local v10, recipientIds:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    const-string v15, "recipient_ids"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 142
    :cond_1
    if-nez v10, :cond_2

    .line 143
    const-string v10, ""

    .line 146
    :cond_2
    const/4 v13, 0x1

    invoke-static {v10, v13}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mRecipients:Lcom/android/mms/data/ContactList;

    const-string v14, ", "

    invoke-virtual {v13, v14}, Lcom/android/mms/data/ContactList;->formattedNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, address:Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 151
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0a0188

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    const-string v15, "text"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 176
    .local v12, subtitleString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    const-string v15, "normalized_date"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_e

    .line 177
    const-string v6, ""

    .line 181
    .local v6, mDateString:Ljava/lang/String;
    :goto_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 182
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0010

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 191
    :cond_4
    if-nez v7, :cond_10

    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mThreadLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/View;->setClickable(Z)V

    .line 193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setClickable(Z)V

    .line 195
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mThreadLayout:Landroid/widget/LinearLayout;

    const v14, 0x7f020284

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mThreadLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SearchListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v13, :cond_5

    .line 199
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mRecipients:Lcom/android/mms/data/ContactList;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/mms/ui/SearchListItem;->updateAvatarView(Lcom/android/mms/data/ContactList;Z)V

    .line 202
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/SearchListItem;->formatAddress(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 203
    .local v4, formattedAddress:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mThreadAddress:Landroid/widget/TextView;

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mDateView:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mThreadSnippet:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mThreadLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 220
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/mms/ui/SearchListItem;->mLastThreadIndex:J

    int-to-long v15, v3

    cmp-long v13, v13, v15

    if-eqz v13, :cond_6

    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mListDivider:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->visibleView:Landroid/view/View;

    if-eqz v13, :cond_7

    .line 224
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->visibleView:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mBubbleRootLayout:Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_8

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mBubbleRootLayout:Landroid/widget/RelativeLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 273
    .end local v4           #formattedAddress:Ljava/lang/CharSequence;
    :cond_8
    :goto_4
    return-void

    .line 148
    .end local v2           #address:Ljava/lang/String;
    .end local v6           #mDateString:Ljava/lang/String;
    .end local v12           #subtitleString:Ljava/lang/String;
    :cond_9
    const-string v2, ""

    goto/16 :goto_0

    .line 154
    .restart local v2       #address:Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0a000f

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 156
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    .line 157
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mRecipients:Lcom/android/mms/data/ContactList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/data/Contact;

    invoke-virtual {v13}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, number:Ljava/lang/String;
    const-string v13, "CBmessages"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 160
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0a0132

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    .end local v9           #number:Ljava/lang/String;
    :cond_c
    :goto_5
    const-string v13, "#CMAS#"

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategory(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 161
    .restart local v9       #number:Ljava/lang/String;
    :cond_d
    const-string v13, "Pushmessage"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 162
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0a01bb

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 179
    .end local v9           #number:Ljava/lang/String;
    .restart local v12       #subtitleString:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    const-string v15, "normalized_date"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #mDateString:Ljava/lang/String;
    goto/16 :goto_2

    .line 209
    .restart local v4       #formattedAddress:Ljava/lang/CharSequence;
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mDateView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020041

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mDateView:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mThreadSnippet:Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mThreadSnippet:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 229
    .end local v4           #formattedAddress:Ljava/lang/CharSequence;
    :cond_10
    const/4 v13, 0x1

    if-ne v7, v13, :cond_8

    .line 230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mThreadLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setClickable(Z)V

    .line 231
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/View;->setFocusable(Z)V

    .line 232
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/View;->setClickable(Z)V

    .line 233
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SearchListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mRecipients:Lcom/android/mms/data/ContactList;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/mms/ui/SearchListItem;->updateAvatarView(Lcom/android/mms/data/ContactList;Z)V

    .line 237
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SearchListItem;->formatMessage(Ljava/util/regex/Pattern;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 239
    .local v5, formattedMessage:Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_12

    .line 240
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mBubbleText:Landroid/widget/TextView;

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mBubbleText:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mBubbleAddress:Landroid/widget/TextView;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SearchListItem;->setBubbleTextColor()V

    .line 250
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/mms/ui/SearchListItem;->drawLeftStatusIndicator(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SearchListItem;->getTransportType()Ljava/lang/String;

    move-result-object v13

    const-string v14, "mms"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 253
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0040

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 254
    .local v8, mmsDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/ui/SearchListItem;->getSlideNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 255
    .local v11, slideNumber:Ljava/lang/String;
    if-eqz v11, :cond_13

    .line 256
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mSlideNumber:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mSlideNumber:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .end local v8           #mmsDescription:Ljava/lang/String;
    .end local v11           #slideNumber:Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mBubbleDateView:Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 267
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mBubbleRootLayout:Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_11

    .line 268
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mBubbleRootLayout:Landroid/widget/RelativeLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 270
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mThreadLayout:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mListDivider:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 243
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mBubbleText:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 258
    .restart local v8       #mmsDescription:Ljava/lang/String;
    .restart local v11       #slideNumber:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mSlideNumber:Landroid/widget/TextView;

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 262
    .end local v8           #mmsDescription:Ljava/lang/String;
    .end local v11           #slideNumber:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SearchListItem;->mSlideNumber:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8
.end method

.method protected formatMessage(Ljava/util/regex/Pattern;)Ljava/lang/CharSequence;
    .locals 19
    .parameter "highlight"

    .prologue
    .line 388
    const/4 v1, 0x0

    new-array v3, v1, [I

    .line 389
    .local v3, smileyStart:[I
    const/4 v1, 0x0

    new-array v4, v1, [I

    .line 392
    .local v4, smileyEnd:[I
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 394
    .local v5, buf:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    const-string v6, "text"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 395
    .local v7, body:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    const-string v6, "sub"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 396
    .local v15, subject:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    const-string v6, "sub_cs"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 405
    .local v14, sub_cs:I
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v11

    .line 406
    .local v11, parser:Lcom/android/mms/util/SmileyParser;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v10, 0x1

    .line 407
    .local v10, hasSubject:Z
    :goto_0
    if-eqz v10, :cond_0

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a001f

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v2, v6, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 410
    .local v16, subjectString:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 413
    .end local v16           #subjectString:Ljava/lang/String;
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 417
    if-eqz v10, :cond_1

    .line 418
    const-string v1, "\n"

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 420
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SearchListItem;->getTransportType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 422
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 423
    invoke-virtual {v11, v7}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 426
    invoke-virtual {v11}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v3

    .line 427
    invoke-virtual {v11}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v4

    .line 429
    const-string v1, "\n"

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;

    const v6, 0x7f0a018a

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 431
    .local v13, strMore:Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    .line 432
    .local v12, startMore:I
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int v9, v12, v1

    .line 434
    .local v9, endMore:I
    invoke-virtual {v5, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 437
    .local v8, color:I
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-virtual {v5, v1, v12, v9, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 439
    new-instance v1, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct {v1, v2}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    const/16 v2, 0x21

    invoke-virtual {v5, v1, v12, v9, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 449
    .end local v8           #color:I
    .end local v9           #endMore:I
    .end local v12           #startMore:I
    .end local v13           #strMore:Ljava/lang/CharSequence;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;

    const-string v6, "Mms/SearchListListItem"

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/mms/util/UIUtils;->highlightMessage(Landroid/content/Context;Ljava/util/regex/Pattern;[I[ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 451
    return-object v5

    .line 406
    .end local v10           #hasSubject:Z
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 442
    .restart local v10       #hasSubject:Z
    :cond_4
    invoke-virtual {v11, v7}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 444
    invoke-virtual {v11}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v3

    .line 445
    invoke-virtual {v11}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v4

    goto :goto_1
.end method

.method getTransportType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, transport_type:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;

    const-string v3, "transport_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 458
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 106
    const v0, 0x7f0e01e9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchListItem;->mRootLayout:Landroid/view/View;

    .line 109
    const v0, 0x7f0e01ec

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SearchListItem;->mThreadLayout:Landroid/widget/LinearLayout;

    .line 110
    const v0, 0x7f0e01f0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SearchListItem;->mThreadAddress:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0e01f1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SearchListItem;->mThreadSnippet:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0e00d9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SearchListItem;->mDateView:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0e01ed

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/SearchListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 116
    const v0, 0x7f0e01f3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SearchListItem;->mBubbleListLayout:Landroid/widget/LinearLayout;

    .line 117
    const v0, 0x7f0e01f4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SearchListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    .line 118
    const v0, 0x7f0e01f5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SearchListItem;->mBubbleAddress:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f0e01f6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SearchListItem;->mBubbleText:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0e01f7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SearchListItem;->mSlideNumber:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0e01f2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SearchListItem;->mBubbleRootLayout:Landroid/widget/RelativeLayout;

    .line 124
    const v0, 0x7f0e01f8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchListItem;->mListDivider:Landroid/view/View;

    .line 125
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 338
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportQwertKeypad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchListItem;->onMessageListItemClick()V

    .line 344
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMessageListItemClick()V
    .locals 5

    .prologue
    .line 359
    iget-object v2, p0, Lcom/android/mms/ui/SearchListItem;->mRootLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    .line 360
    .local v1, position:I
    const-string v2, "Mms/SearchListListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " selected position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 363
    .local v0, msg:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 364
    iget-wide v2, p0, Lcom/android/mms/ui/SearchListItem;->mLastThreadIndex:J

    long-to-int v2, v2

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 365
    iget-object v2, p0, Lcom/android/mms/ui/SearchListItem;->mClickHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 366
    return-void
.end method

.method public setLastIndex(J)V
    .locals 3
    .parameter "mBubbleIdx"

    .prologue
    const-wide/16 v1, 0x1

    .line 548
    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    .line 549
    sub-long v0, p1, v1

    iput-wide v0, p0, Lcom/android/mms/ui/SearchListItem;->mLastThreadIndex:J

    .line 551
    :cond_0
    return-void
.end method
