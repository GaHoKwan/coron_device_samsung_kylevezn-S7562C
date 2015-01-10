.class public Lcom/android/mms/ui/DraftMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "DraftMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field public static final CACHE_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "Mms/DraftMessageListAdapter"

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

.field private final mMessageItemCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/BaseMessageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field public mMsgListMode:I

.field private mMsgPointer:Landroid/widget/ImageView;

.field mOnContentChangedListener:Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;

.field mRootLayout:Landroid/widget/LinearLayout;

.field private mSelectedMessagePos:J

.field private mStatusView:Landroid/widget/TextView;

.field private mSubjectView:Landroid/widget/TextView;

.field private mTempMsgIconView:Landroid/widget/ImageView;

.field private mThreadId:J

.field private m_LayoutInflater:Landroid/view/LayoutInflater;

.field private m_nViewResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

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
    iput v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    .line 85
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFontSize:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mSelectedMessagePos:J

    .line 101
    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    .line 102
    iput p3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->m_nViewResourceId:I

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    .line 109
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    .line 111
    new-instance v0, Lcom/android/mms/ui/DraftMessageListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/DraftMessageListAdapter$1;-><init>(Lcom/android/mms/ui/DraftMessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 118
    if-nez p2, :cond_0

    .line 119
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DraftMessageListAdapter;->setFontSize(I)V

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mThreadId:J

    .line 128
    return-void

    .line 121
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method private changeFontSize(I)V
    .locals 7
    .parameter "fontSize"

    .prologue
    .line 326
    const/4 v3, 0x4

    if-ge p1, v3, :cond_0

    .line 351
    :goto_0
    return-void

    .line 329
    :cond_0
    const-string v3, "Mms/DraftMessageListAdapter"

    const-string v4, "changeFontSize"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 331
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 333
    .local v0, fromLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 334
    .local v2, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 349
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 336
    :pswitch_0
    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 338
    const v3, 0x7f090016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 341
    :pswitch_1
    const v3, 0x7f090015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 343
    const v3, 0x7f090017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 344
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 334
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createFromView()V
    .locals 7

    .prologue
    .line 149
    iget-object v5, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    if-nez v5, :cond_0

    .line 166
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v5, "Mms/DraftMessageListAdapter"

    const-string v6, "createFromView"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v5, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 155
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 156
    .local v4, parent:Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 157
    .local v1, index:I
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 159
    iget-object v5, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 160
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030025

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 161
    .local v0, from:Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 165
    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private getContactImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 447
    sget-object v3, Lcom/android/mms/ui/DraftMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 448
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageListAdapter;->initContactImage(Landroid/content/Context;)V

    .line 450
    :cond_0
    sget-object v3, Lcom/android/mms/ui/DraftMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v3, v7

    .line 452
    .local v1, returnContactImage:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_1

    move-object v2, v1

    .line 482
    .end local v1           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .local v2, returnContactImage:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 457
    .end local v2           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .restart local v1       #returnContactImage:Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    .line 458
    .local v0, imageNum:I
    iget-wide v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mThreadId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 459
    iget-wide v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mThreadId:J

    const-wide/16 v5, 0x5

    rem-long/2addr v3, v5

    long-to-int v0, v3

    .line 462
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 479
    sget-object v3, Lcom/android/mms/ui/DraftMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v3, v7

    :goto_1
    move-object v2, v1

    .line 482
    .end local v1           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .restart local v2       #returnContactImage:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 464
    .end local v2           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .restart local v1       #returnContactImage:Landroid/graphics/drawable/Drawable;
    :pswitch_0
    sget-object v3, Lcom/android/mms/ui/DraftMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    aget-object v1, v3, v4

    .line 465
    goto :goto_1

    .line 467
    :pswitch_1
    sget-object v3, Lcom/android/mms/ui/DraftMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    aget-object v1, v3, v4

    .line 468
    goto :goto_1

    .line 470
    :pswitch_2
    sget-object v3, Lcom/android/mms/ui/DraftMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x3

    aget-object v1, v3, v4

    .line 471
    goto :goto_1

    .line 473
    :pswitch_3
    sget-object v3, Lcom/android/mms/ui/DraftMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x4

    aget-object v1, v3, v4

    .line 474
    goto :goto_1

    .line 476
    :pswitch_4
    sget-object v3, Lcom/android/mms/ui/DraftMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x5

    aget-object v1, v3, v4

    .line 477
    goto :goto_1

    .line 462
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
    .line 318
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    neg-long p1, p1

    .line 321
    .end local p1
    :cond_0
    return-wide p1
.end method

.method private initContactImage(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 436
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    .line 437
    sget-object v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 438
    sget-object v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020247

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 439
    sget-object v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020248

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 440
    sget-object v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020249

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 441
    sget-object v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 442
    sget-object v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 443
    return-void
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 311
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    const/4 v0, 0x0

    .line 314
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

    .line 355
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 357
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 358
    invoke-virtual {p1, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 359
    .local v1, contact:Lcom/android/mms/data/Contact;
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/mms/ui/DraftMessageListAdapter;->getContactImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 360
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, number:Ljava/lang/String;
    const-string v3, "CBmessages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 364
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02023c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 400
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #number:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v7}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 402
    iget v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    if-nez v3, :cond_7

    .line 403
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 406
    :goto_1
    return-void

    .line 366
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    .restart local v2       #number:Ljava/lang/String;
    :cond_0
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 368
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02024f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 381
    :cond_2
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 382
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v2, v5}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    .line 385
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 386
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v2, v5}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    .line 388
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 391
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #number:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 392
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/DraftMessageListAdapter;->getContactImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 396
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020244

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 405
    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v7}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 19
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 170
    move-object/from16 v11, p1

    .line 171
    .local v11, v:Landroid/view/View;
    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v12, :cond_0

    .line 172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->m_nViewResourceId:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 176
    :cond_0
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v12

    if-nez v12, :cond_1

    .line 177
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 180
    :cond_1
    const v12, 0x7f0e012a

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mRootLayout:Landroid/widget/LinearLayout;

    .line 181
    const v12, 0x7f0e00dc

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    .line 182
    const v12, 0x7f0e00a2

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    .line 183
    const v12, 0x7f0e00d9

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mDateView:Landroid/widget/TextView;

    .line 184
    const v12, 0x7f0e00d6

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mStatusView:Landroid/widget/TextView;

    .line 185
    const v12, 0x7f0e012b

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mTempMsgIconView:Landroid/widget/ImageView;

    .line 186
    const v12, 0x7f0e00d4

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 187
    const v12, 0x7f0e00db

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    .line 188
    const v12, 0x7f0e00d5

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    .line 189
    const v12, 0x7f0e00da

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgPointer:Landroid/widget/ImageView;

    .line 191
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 192
    .local v6, oldFontSize:Ljava/lang/Integer;
    if-nez v6, :cond_3

    .line 193
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFontSize:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 201
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v12, v12, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 202
    .local v9, szMsgType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v12, v12, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 205
    .local v3, lMsgId:J
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v3, v4, v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/BaseMessageItem;

    move-result-object v5

    .line 207
    .local v5, msgItem:Lcom/android/mms/ui/BaseMessageItem;
    if-nez v5, :cond_4

    .line 208
    const-string v12, "Mms/DraftMessageListAdapter"

    const-string v13, "msgItem is null, bind view fail"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :goto_1
    return-void

    .line 195
    .end local v3           #lMsgId:J
    .end local v5           #msgItem:Lcom/android/mms/ui/BaseMessageItem;
    .end local v9           #szMsgType:Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFontSize:I

    if-eq v12, v13, :cond_2

    .line 196
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/DraftMessageListAdapter;->createFromView()V

    .line 197
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFontSize:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    .restart local v3       #lMsgId:J
    .restart local v5       #msgItem:Lcom/android/mms/ui/BaseMessageItem;
    .restart local v9       #szMsgType:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    if-lez v12, :cond_c

    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, checked:Z
    const-string v12, "sms"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 215
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 222
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 223
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 224
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    const-wide/16 v14, 0x12c

    new-instance v16, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct/range {v16 .. v16}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    const/high16 v17, 0x42a0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v18}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/mms/animation/MsgListAnimation;->showCheckBoxAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 230
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v12, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 231
    if-nez v2, :cond_6

    .line 232
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    check-cast v12, Lcom/android/mms/ui/DraftMessageManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/DraftMessageManager;->setMessageSelectAll(Z)V

    .line 239
    .end local v2           #checked:Z
    :cond_6
    :goto_3
    iget-object v12, v5, Lcom/android/mms/ui/BaseMessageItem;->mRecipientIds:Ljava/lang/String;

    if-nez v12, :cond_7

    .line 240
    const-string v12, ""

    iput-object v12, v5, Lcom/android/mms/ui/BaseMessageItem;->mRecipientIds:Ljava/lang/String;

    .line 244
    :cond_7
    iget-object v12, v5, Lcom/android/mms/ui/BaseMessageItem;->mRecipientIds:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v7

    .line 246
    .local v7, recipients:Lcom/android/mms/data/ContactList;
    const-string v8, ""

    .line 247
    .local v8, szFrom:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v12

    if-nez v12, :cond_e

    .line 248
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 249
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0188

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 261
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const-string v12, "mms"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 265
    iget-object v10, v5, Lcom/android/mms/ui/BaseMessageItem;->mSubject:Ljava/lang/String;

    .line 266
    .local v10, szSubject:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 267
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0010

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 271
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mDateView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020041

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mDateView:Landroid/widget/TextView;

    iget-wide v13, v5, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mStatusView:Landroid/widget/TextView;

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFontSize:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/ui/DraftMessageListAdapter;->changeFontSize(I)V

    .line 286
    invoke-virtual {v5}, Lcom/android/mms/ui/BaseMessageItem;->getThreadId()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mThreadId:J

    .line 288
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/mms/ui/DraftMessageListAdapter;->updateAvatarView(Lcom/android/mms/data/ContactList;)V

    goto/16 :goto_1

    .line 216
    .end local v7           #recipients:Lcom/android/mms/data/ContactList;
    .end local v8           #szFrom:Ljava/lang/String;
    .end local v10           #szSubject:Ljava/lang/String;
    .restart local v2       #checked:Z
    :cond_a
    const-string v12, "wpm"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_2

    .line 219
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_2

    .line 234
    .end local v2           #checked:Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    .line 251
    .restart local v7       #recipients:Lcom/android/mms/data/ContactList;
    .restart local v8       #szFrom:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a000f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 253
    :cond_e
    const-string v12, ", "

    invoke-virtual {v7, v12}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 254
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 255
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 256
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0188

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 258
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a000f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 269
    :cond_10
    iget-object v10, v5, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    .restart local v10       #szSubject:Ljava/lang/String;
    goto/16 :goto_5
.end method

.method public changeAvatarSizewhenchangeFontSize(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/16 v6, 0x5a

    const/16 v5, 0x9

    const/16 v4, 0x68

    const/16 v3, 0xc

    .line 409
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Landroid/widget/QuickContactBadge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 411
    .local v0, AvatarLP:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x3

    .line 413
    .local v1, fontSize:I
    iget v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    if-nez v2, :cond_0

    .line 414
    iget v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFontSize:I

    .line 416
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 417
    :cond_1
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 418
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 419
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 420
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 432
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v0}, Landroid/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    return-void

    .line 421
    :cond_2
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 422
    :cond_3
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 423
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 424
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 425
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 427
    :cond_4
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 428
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 429
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 430
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public clearCheckedList()V
    .locals 2

    .prologue
    .line 608
    const-string v0, "Mms/DraftMessageListAdapter"

    const-string v1, "clearCheckedList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 611
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 612
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 613
    return-void
.end method

.method public getCMASAvatarwhenchangeFontSize()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const v5, 0x7f020241

    const v4, 0x7f02023e

    const/4 v3, 0x3

    .line 521
    const/4 v1, 0x3

    .line 523
    .local v1, fontSize:I
    iget v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    if-nez v2, :cond_0

    .line 524
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v1

    .line 526
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 527
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 528
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020240

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 542
    .local v0, TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 530
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02023f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 531
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eq v1, v3, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 532
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 533
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 535
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 537
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 538
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 540
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/BaseMessageItem;
    .locals 7
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    .line 296
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/DraftMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/BaseMessageItem;

    .line 298
    .local v1, item:Lcom/android/mms/ui/BaseMessageItem;
    if-nez v1, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/android/mms/ui/DraftMessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    :try_start_0
    new-instance v2, Lcom/android/mms/ui/BaseMessageItem;

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v2, v3, p1, p4, v4}, Lcom/android/mms/ui/BaseMessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v1           #item:Lcom/android/mms/ui/BaseMessageItem;
    .local v2, item:Lcom/android/mms/ui/BaseMessageItem;
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v4, v2, Lcom/android/mms/ui/BaseMessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/mms/ui/BaseMessageItem;->getMsgId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/DraftMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 306
    .end local v2           #item:Lcom/android/mms/ui/BaseMessageItem;
    .restart local v1       #item:Lcom/android/mms/ui/BaseMessageItem;
    :cond_0
    :goto_0
    return-object v1

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Lcom/google/android/mms/MmsException;
    :goto_1
    const-string v3, "Mms/DraftMessageListAdapter"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    .end local v1           #item:Lcom/android/mms/ui/BaseMessageItem;
    .restart local v2       #item:Lcom/android/mms/ui/BaseMessageItem;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #item:Lcom/android/mms/ui/BaseMessageItem;
    .restart local v1       #item:Lcom/android/mms/ui/BaseMessageItem;
    goto :goto_1
.end method

.method public getCbMsgAvatarwhenchangeFontSize()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const v2, 0x7f02023c

    .line 504
    const/4 v0, 0x3

    .line 506
    .local v0, fontSize:I
    iget v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    if-nez v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    .line 509
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 514
    :goto_0
    return-object v1

    .line 511
    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 512
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 514
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getCheckedCount()I
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentListMode()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    return v0
.end method

.method public getWpmAvatarwhenchangeFontSize()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const v2, 0x7f02024f

    .line 487
    const/4 v0, 0x3

    .line 489
    .local v0, fontSize:I
    iget v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    if-nez v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    .line 492
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020250

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 497
    :goto_0
    return-object v1

    .line 494
    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 495
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 497
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public initListItemSelectedMessagePos()V
    .locals 2

    .prologue
    .line 717
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mSelectedMessagePos:J

    .line 718
    return-void
.end method

.method public isCheckedMessageId(JLjava/lang/String;)Z
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 644
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 649
    :goto_0
    return v0

    .line 646
    :cond_0
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

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
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->m_nViewResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 132
    const-string v0, "Mms/DraftMessageListAdapter"

    const-string v1, "notifyDataSetChanged()."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 137
    return-void
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 556
    const-string v0, "Mms/DraftMessageListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/DraftMessageListAdapter;)V

    .line 562
    :cond_0
    return-void
.end method

.method public refreshFontSize()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFontSize:I

    .line 141
    return-void
.end method

.method public resetCheckedList()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 584
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 585
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 586
    return-void
.end method

.method public setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 654
    return-void
.end method

.method public setChecked(JLjava/lang/String;)V
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 589
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 594
    :cond_2
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 595
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 600
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setFontSize(I)V
    .locals 0
    .parameter "fontSize"

    .prologue
    .line 292
    iput p1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mFontSize:I

    .line 293
    return-void
.end method

.method public setListItemSelected(J)V
    .locals 0
    .parameter "messagePos"

    .prologue
    .line 713
    iput-wide p1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mSelectedMessagePos:J

    .line 714
    return-void
.end method

.method public setMessageListMode(I)V
    .locals 1
    .parameter "nListMode"

    .prologue
    .line 570
    iget v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    if-ne v0, p1, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    iput p1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    .line 575
    iget v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mMsgListMode:I

    if-lez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 577
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 578
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;

    .line 552
    return-void
.end method

.method public toggleCheckBox(JLjava/lang/String;)Z
    .locals 3
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    const/4 v0, 0x0

    .line 616
    const-string v1, "sms"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 617
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 636
    :goto_0
    return v0

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 622
    :cond_1
    const-string v1, "wpm"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 623
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 624
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 627
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 629
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 630
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 633
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
