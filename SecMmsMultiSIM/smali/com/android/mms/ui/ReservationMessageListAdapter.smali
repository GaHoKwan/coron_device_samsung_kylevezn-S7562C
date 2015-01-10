.class public Lcom/android/mms/ui/ReservationMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ReservationMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field public static final CACHE_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "Mms/ReservationMessageListAdapter"

.field private static mDefaultContactImage:[Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckedMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedWpmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mDateView:Landroid/widget/TextView;

.field private final mFactory:Landroid/view/LayoutInflater;

.field private mFontSize:I

.field private mFromView:Landroid/widget/TextView;

.field private mListItemLayout:Landroid/widget/RelativeLayout;

.field private mLockedMsgIconView:Landroid/widget/ImageView;

.field private final mMessageItemCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field public mMsgListMode:I

.field private mMsgPointer:Landroid/widget/ImageView;

.field mOnContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

.field mRootLayout:Landroid/widget/LinearLayout;

.field private mSelectedMessagePos:J

.field private mStatusView:Landroid/widget/TextView;

.field private mSubjectView:Landroid/widget/TextView;

.field private mThreadId:J

.field private m_LayoutInflater:Landroid/view/LayoutInflater;

.field private m_nViewResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "textViewResourceId"

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 75
    iput v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListMode:I

    .line 85
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFontSize:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mSelectedMessagePos:J

    .line 101
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    .line 102
    iput p3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->m_nViewResourceId:I

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    .line 109
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    .line 111
    new-instance v0, Lcom/android/mms/ui/ReservationMessageListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/ReservationMessageListAdapter$1;-><init>(Lcom/android/mms/ui/ReservationMessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 118
    if-nez p2, :cond_0

    .line 119
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->setFontSize(I)V

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mThreadId:J

    .line 129
    return-void

    .line 121
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method private changeFontSize()V
    .locals 12

    .prologue
    .line 307
    iget v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFontSize:I

    .line 309
    .local v1, fontSize:I
    const/4 v8, 0x4

    if-ge v1, v8, :cond_0

    .line 347
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 313
    .local v5, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v8, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 314
    .local v2, fromLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 315
    .local v7, statusLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 317
    .local v0, dateLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 318
    .local v6, res:Landroid/content/res/Resources;
    packed-switch v1, :pswitch_data_0

    .line 338
    :goto_1
    iget-object v8, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    iget-object v8, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    iget-object v8, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 320
    :pswitch_0
    const v8, 0x7f090014

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 322
    const v8, 0x7f090016

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 323
    const v8, 0x7f090018

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    .line 324
    .local v4, largeTopMargin:I
    iput v4, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 327
    .end local v4           #largeTopMargin:I
    :pswitch_1
    const v8, 0x7f090015

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 329
    const v8, 0x7f090017

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 330
    const v8, 0x7f090019

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v3, v8

    .line 331
    .local v3, hugeTopMargin:I
    iput v3, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 333
    iget-object v8, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFromView:Landroid/widget/TextView;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09000d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 318
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getContactImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 443
    sget-object v3, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 444
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->initContactImage(Landroid/content/Context;)V

    .line 446
    :cond_0
    sget-object v3, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v3, v7

    .line 448
    .local v1, returnContactImage:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_1

    move-object v2, v1

    .line 477
    .end local v1           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .local v2, returnContactImage:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 453
    .end local v2           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .restart local v1       #returnContactImage:Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    .line 454
    .local v0, imageNum:I
    iget-wide v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mThreadId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 455
    iget-wide v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mThreadId:J

    const-wide/16 v5, 0x5

    rem-long/2addr v3, v5

    long-to-int v0, v3

    .line 457
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 474
    sget-object v3, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v3, v7

    :goto_1
    move-object v2, v1

    .line 477
    .end local v1           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .restart local v2       #returnContactImage:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 459
    .end local v2           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .restart local v1       #returnContactImage:Landroid/graphics/drawable/Drawable;
    :pswitch_0
    sget-object v3, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    aget-object v1, v3, v4

    .line 460
    goto :goto_1

    .line 462
    :pswitch_1
    sget-object v3, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    aget-object v1, v3, v4

    .line 463
    goto :goto_1

    .line 465
    :pswitch_2
    sget-object v3, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x3

    aget-object v1, v3, v4

    .line 466
    goto :goto_1

    .line 468
    :pswitch_3
    sget-object v3, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x4

    aget-object v1, v3, v4

    .line 469
    goto :goto_1

    .line 471
    :pswitch_4
    sget-object v3, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x5

    aget-object v1, v3, v4

    .line 472
    goto :goto_1

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 299
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    neg-long p1, p1

    .line 302
    .end local p1
    :cond_0
    return-wide p1
.end method

.method private initContactImage(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 432
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    .line 433
    sget-object v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 434
    sget-object v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020247

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 435
    sget-object v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020248

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 436
    sget-object v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020249

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 437
    sget-object v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 438
    sget-object v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 439
    return-void
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 292
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    :cond_0
    const/4 v0, 0x0

    .line 295
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateAvatarView(Lcom/android/mms/data/ContactList;)V
    .locals 8
    .parameter "recipients"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 351
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 353
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 354
    invoke-virtual {p1, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 355
    .local v1, contact:Lcom/android/mms/data/Contact;
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getContactImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 356
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, number:Ljava/lang/String;
    const-string v3, "CBmessages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 360
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02023c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 396
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #number:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v7}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 398
    iget v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListMode:I

    if-nez v3, :cond_7

    .line 399
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 402
    :goto_1
    return-void

    .line 362
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    .restart local v2       #number:Ljava/lang/String;
    :cond_0
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 363
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 364
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02024f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 374
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 377
    :cond_2
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 378
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v2, v5}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    .line 381
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 382
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v2, v5}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    .line 384
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 387
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #number:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 388
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getContactImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 392
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020244

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 401
    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v7}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 20
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 144
    move-object/from16 v12, p1

    .line 145
    .local v12, v:Landroid/view/View;
    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v13, :cond_0

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->m_nViewResourceId:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 150
    :cond_0
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v13

    if-nez v13, :cond_1

    .line 151
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 154
    :cond_1
    const v13, 0x7f0e012a

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mRootLayout:Landroid/widget/LinearLayout;

    .line 155
    const v13, 0x7f0e00dc

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFromView:Landroid/widget/TextView;

    .line 156
    const v13, 0x7f0e00a2

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    .line 157
    const v13, 0x7f0e00d9

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDateView:Landroid/widget/TextView;

    .line 158
    const v13, 0x7f0e00d6

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mStatusView:Landroid/widget/TextView;

    .line 159
    const v13, 0x7f0e00d4

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 160
    const v13, 0x7f0e00db

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    .line 161
    const v13, 0x7f0e00d5

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    .line 162
    const v13, 0x7f0e00da

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgPointer:Landroid/widget/ImageView;

    .line 163
    const v13, 0x7f0e012b

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mLockedMsgIconView:Landroid/widget/ImageView;

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v13, v13, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 166
    .local v10, szMsgType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v13, v13, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 167
    .local v3, lMsgId:J
    const/4 v5, 0x0

    .line 168
    .local v5, mLocked:Z
    const-string v13, "sms"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v13, v13, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-eqz v13, :cond_3

    const/4 v5, 0x1

    .line 175
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v10, v3, v4, v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    .line 177
    .local v6, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v6, :cond_6

    .line 178
    const-string v13, "Mms/ReservationMessageListAdapter"

    const-string v14, "msgItem is null, bind view fail"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_1
    return-void

    .line 169
    .end local v6           #msgItem:Lcom/android/mms/ui/MessageItem;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 171
    :cond_4
    const-string v13, "mms"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 172
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v13, v13, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-eqz v13, :cond_5

    const/4 v5, 0x1

    :goto_2
    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 182
    .restart local v6       #msgItem:Lcom/android/mms/ui/MessageItem;
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListMode:I

    if-lez v13, :cond_f

    .line 183
    const/4 v2, 0x0

    .line 184
    .local v2, checked:Z
    const-string v13, "sms"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 185
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 192
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 193
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 194
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    const-wide/16 v15, 0x12c

    new-instance v17, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct/range {v17 .. v17}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    const/high16 v18, 0x42a0

    const/16 v19, 0x0

    invoke-static/range {v15 .. v19}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/mms/animation/MsgListAnimation;->showCheckBoxAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 200
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v13, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 201
    if-nez v2, :cond_8

    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    check-cast v13, Lcom/android/mms/ui/ReservationMessageManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/ui/ReservationMessageManager;->setMessageSelectAll(Z)V

    .line 208
    .end local v2           #checked:Z
    :cond_8
    :goto_4
    if-eqz v5, :cond_10

    .line 209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mLockedMsgIconView:Landroid/widget/ImageView;

    if-eqz v13, :cond_9

    .line 210
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mLockedMsgIconView:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mLockedMsgIconView:Landroid/widget/ImageView;

    const v14, 0x7f020263

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Lcom/android/mms/ui/MessageUtils;->getRecipientIdsByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 223
    .local v7, recipientIds:Ljava/lang/String;
    if-nez v7, :cond_a

    .line 224
    const-string v7, ""

    .line 227
    :cond_a
    const/4 v13, 0x1

    invoke-static {v7, v13}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v8

    .line 229
    .local v8, recipients:Lcom/android/mms/data/ContactList;
    const-string v9, ""

    .line 230
    .local v9, szFrom:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->size()I

    move-result v13

    if-nez v13, :cond_12

    .line 231
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 232
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0188

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 244
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    const-string v13, "mms"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 248
    iget-object v11, v6, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 249
    .local v11, szSubject:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 250
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0010

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 254
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDateView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020041

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDateView:Landroid/widget/TextView;

    iget-wide v14, v6, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-object/from16 v0, p2

    invoke-static {v0, v14, v15}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mStatusView:Landroid/widget/TextView;

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->changeFontSize()V

    .line 267
    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mThreadId:J

    .line 269
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/ReservationMessageListAdapter;->updateAvatarView(Lcom/android/mms/data/ContactList;)V

    goto/16 :goto_1

    .line 186
    .end local v7           #recipientIds:Ljava/lang/String;
    .end local v8           #recipients:Lcom/android/mms/data/ContactList;
    .end local v9           #szFrom:Ljava/lang/String;
    .end local v11           #szSubject:Ljava/lang/String;
    .restart local v2       #checked:Z
    :cond_d
    const-string v13, "wpm"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_3

    .line 189
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_3

    .line 204
    .end local v2           #checked:Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    .line 215
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mLockedMsgIconView:Landroid/widget/ImageView;

    if-eqz v13, :cond_9

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mLockedMsgIconView:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 234
    .restart local v7       #recipientIds:Ljava/lang/String;
    .restart local v8       #recipients:Lcom/android/mms/data/ContactList;
    .restart local v9       #szFrom:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a000f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6

    .line 236
    :cond_12
    const-string v13, ", "

    invoke-virtual {v8, v13}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 237
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 238
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 239
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0188

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6

    .line 241
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a000f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6

    .line 252
    :cond_14
    iget-object v11, v6, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .restart local v11       #szSubject:Ljava/lang/String;
    goto/16 :goto_7
.end method

.method public changeAvatarSizewhenchangeFontSize(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/16 v6, 0x5a

    const/16 v5, 0x9

    const/16 v4, 0x68

    const/16 v3, 0xc

    .line 405
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Landroid/widget/QuickContactBadge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 407
    .local v0, AvatarLP:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x3

    .line 409
    .local v1, fontSize:I
    iget v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListMode:I

    if-nez v2, :cond_0

    .line 410
    iget v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFontSize:I

    .line 412
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 413
    :cond_1
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 414
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 415
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 416
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 428
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v0}, Landroid/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    return-void

    .line 417
    :cond_2
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 418
    :cond_3
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 419
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 420
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 421
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 423
    :cond_4
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 424
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 425
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 426
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public clearCheckedList()V
    .locals 2

    .prologue
    .line 603
    const-string v0, "Mms/ReservationMessageListAdapter"

    const-string v1, "clearCheckedList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 606
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 607
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 608
    return-void
.end method

.method public getCMASAvatarwhenchangeFontSize()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const v5, 0x7f020241

    const v4, 0x7f02023e

    const/4 v3, 0x3

    .line 516
    const/4 v1, 0x3

    .line 518
    .local v1, fontSize:I
    iget v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListMode:I

    if-nez v2, :cond_0

    .line 519
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v1

    .line 521
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 522
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 523
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020240

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 537
    .local v0, TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 525
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02023f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 526
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eq v1, v3, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 527
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 528
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 530
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 532
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 533
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 535
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 10
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    .line 278
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;

    .line 279
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/android/mms/ui/ReservationMessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    :goto_0
    return-object v0

    .line 283
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 284
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Lcom/google/android/mms/MmsException;
    :goto_1
    const-string v1, "Mms/ReservationMessageListAdapter"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v8

    goto :goto_1

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :cond_0
    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public getCbMsgAvatarwhenchangeFontSize()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const v2, 0x7f02023c

    .line 499
    const/4 v0, 0x3

    .line 501
    .local v0, fontSize:I
    iget v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListMode:I

    if-nez v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    .line 504
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 505
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 509
    :goto_0
    return-object v1

    .line 506
    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 507
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 509
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getCheckedCount()I
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentListMode()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListMode:I

    return v0
.end method

.method public getWpmAvatarwhenchangeFontSize()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const v2, 0x7f02024f

    .line 482
    const/4 v0, 0x3

    .line 484
    .local v0, fontSize:I
    iget v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListMode:I

    if-nez v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    .line 487
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 488
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020250

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 492
    :goto_0
    return-object v1

    .line 489
    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 490
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 492
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public initListItemSelectedMessagePos()V
    .locals 2

    .prologue
    .line 712
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mSelectedMessagePos:J

    .line 713
    return-void
.end method

.method public isCheckedMessageId(JLjava/lang/String;)Z
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 639
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 644
    :goto_0
    return v0

    .line 641
    :cond_0
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->m_nViewResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 551
    const-string v0, "Mms/ReservationMessageListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/ReservationMessageListAdapter;)V

    .line 557
    :cond_0
    return-void
.end method

.method public refreshCheckList()Z
    .locals 24

    .prologue
    .line 717
    const-string v21, "Mms/ReservationMessageListAdapter"

    const-string v22, "refreshCheckList()"

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 719
    .local v2, currentCursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 721
    .local v15, retVal:Z
    if-nez v2, :cond_0

    move/from16 v16, v15

    .line 814
    .end local v15           #retVal:Z
    .local v16, retVal:I
    :goto_0
    return v16

    .line 723
    .end local v16           #retVal:I
    .restart local v15       #retVal:Z
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v21

    if-nez v21, :cond_1

    move/from16 v16, v15

    .line 724
    .restart local v16       #retVal:I
    goto :goto_0

    .line 727
    .end local v16           #retVal:I
    :cond_1
    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v14, msgListCurrent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v5, -0x1

    .line 730
    .local v5, lMsgId:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 731
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-nez v21, :cond_2

    .line 733
    const-string v21, "Mms/ReservationMessageListAdapter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "refreshCheckList(): msgListCurrent.size()="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v8, mCheckedSmsListPivot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v7, mCheckedMmsListPivot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v9, mCheckedWpmListPivot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 743
    .local v17, smsCheckListCnt:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    move/from16 v0, v17

    if-ge v4, v0, :cond_4

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 753
    .local v12, msgIdTmp:J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 754
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    const-string v21, "Mms/ReservationMessageListAdapter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "refreshCheckList(): 1. sms chedk list : added msgIdTmp ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",smsCheckListCnt="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 760
    .end local v12           #msgIdTmp:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 761
    .local v10, mmsCheckListCnt:I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v10, :cond_6

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 771
    .restart local v12       #msgIdTmp:J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 772
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    const-string v21, "Mms/ReservationMessageListAdapter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "refreshCheckList(): 2. mms chedk list : added msgIdTmp ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",mmsCheckListCnt="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 778
    .end local v12           #msgIdTmp:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 779
    .local v19, wpmCheckListCnt:I
    const/4 v4, 0x0

    :goto_3
    move/from16 v0, v19

    if-ge v4, v0, :cond_8

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 789
    .restart local v12       #msgIdTmp:J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 790
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    const-string v21, "Mms/ReservationMessageListAdapter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "refreshCheckList(): 3. wpm chedk list : added msgIdTmp ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",wpmCheckListCnt="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 796
    .end local v12           #msgIdTmp:J
    :cond_8
    const/4 v15, 0x1

    .line 797
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->resetCheckedList()V

    .line 798
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 799
    .local v18, smsCheckListCntPivot:I
    const/4 v4, 0x0

    :goto_4
    move/from16 v0, v18

    if-ge v4, v0, :cond_9

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 802
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 803
    .local v11, mmsCheckListCntPivot:I
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v11, :cond_a

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 806
    :cond_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 807
    .local v20, wpmCheckListCntPivot:I
    const/4 v4, 0x0

    :goto_6
    move/from16 v0, v20

    if-ge v4, v0, :cond_b

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 810
    .end local v4           #i:I
    .end local v5           #lMsgId:J
    .end local v7           #mCheckedMmsListPivot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v8           #mCheckedSmsListPivot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v9           #mCheckedWpmListPivot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v10           #mmsCheckListCnt:I
    .end local v11           #mmsCheckListCntPivot:I
    .end local v14           #msgListCurrent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v17           #smsCheckListCnt:I
    .end local v18           #smsCheckListCntPivot:I
    .end local v19           #wpmCheckListCnt:I
    .end local v20           #wpmCheckListCntPivot:I
    :catch_0
    move-exception v3

    .line 811
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v21, "Mms/ReservationMessageListAdapter"

    const-string v22, "refreshCheckList() IndexOutOfBoundsException "

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_b
    move/from16 v16, v15

    .line 814
    .restart local v16       #retVal:I
    goto/16 :goto_0
.end method

.method public refreshFontSize()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFontSize:I

    .line 135
    return-void
.end method

.method public resetCheckedList()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 579
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 580
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 581
    return-void
.end method

.method public setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 648
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 649
    return-void
.end method

.method public setChecked(JLjava/lang/String;)V
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 584
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 589
    :cond_2
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 590
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 595
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setFontSize(I)V
    .locals 0
    .parameter "fontSize"

    .prologue
    .line 274
    iput p1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFontSize:I

    .line 275
    return-void
.end method

.method public setListItemSelected(J)V
    .locals 0
    .parameter "messagePos"

    .prologue
    .line 708
    iput-wide p1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mSelectedMessagePos:J

    .line 709
    return-void
.end method

.method public setMessageListMode(I)V
    .locals 1
    .parameter "nListMode"

    .prologue
    .line 565
    iget v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListMode:I

    if-ne v0, p1, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iput p1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListMode:I

    .line 570
    iget v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListMode:I

    if-lez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 572
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 573
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

    .line 547
    return-void
.end method

.method public toggleCheckBox(JLjava/lang/String;)Z
    .locals 3
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    const/4 v0, 0x0

    .line 611
    const-string v1, "sms"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 612
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 631
    :goto_0
    return v0

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 617
    :cond_1
    const-string v1, "wpm"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 618
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 619
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 622
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 624
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 625
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 628
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
