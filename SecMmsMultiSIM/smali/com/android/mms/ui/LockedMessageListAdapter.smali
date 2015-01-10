.class public Lcom/android/mms/ui/LockedMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "LockedMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field public static final CACHE_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "Mms/LockedMessageListAdapter"

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
            "Lcom/android/mms/ui/BaseMessageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field public mMsgListMode:I

.field private mMsgPointer:Landroid/widget/ImageView;

.field mOnContentChangedListener:Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;

.field mRootLayout:Landroid/widget/LinearLayout;

.field private mSelectedMessagePos:J

.field private mStatusView:Landroid/widget/TextView;

.field private mSubjectView:Landroid/widget/TextView;

.field private mThreadId:J

.field private mTypeView:Landroid/widget/ImageView;

.field private m_LayoutInflater:Landroid/view/LayoutInflater;

.field private m_nViewResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "textViewResourceId"

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 73
    iput v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    .line 83
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFontSize:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mSelectedMessagePos:J

    .line 99
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    .line 100
    iput p3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->m_nViewResourceId:I

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    .line 107
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    .line 109
    new-instance v0, Lcom/android/mms/ui/LockedMessageListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/LockedMessageListAdapter$1;-><init>(Lcom/android/mms/ui/LockedMessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 116
    if-nez p2, :cond_0

    .line 117
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/LockedMessageListAdapter;->setFontSize(I)V

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mThreadId:J

    .line 126
    return-void

    .line 119
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method private changeFontSize(I)V
    .locals 7
    .parameter "fontSize"

    .prologue
    .line 315
    const/4 v3, 0x4

    if-ge p1, v3, :cond_0

    .line 341
    :goto_0
    return-void

    .line 318
    :cond_0
    const-string v3, "Mms/LockedMessageListAdapter"

    const-string v4, "changeFontSize"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 321
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 323
    .local v0, fromLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 324
    .local v2, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 339
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 326
    :pswitch_0
    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 328
    const v3, 0x7f090016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 331
    :pswitch_1
    const v3, 0x7f090015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 333
    const v3, 0x7f090017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 334
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 324
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createFromView()V
    .locals 7

    .prologue
    .line 140
    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    if-nez v5, :cond_0

    .line 157
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string v5, "Mms/LockedMessageListAdapter"

    const-string v6, "createFromView"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 146
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 147
    .local v4, parent:Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 148
    .local v1, index:I
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 150
    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 151
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030025

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    .local v0, from:Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 156
    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private getContactImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 437
    sget-object v3, Lcom/android/mms/ui/LockedMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 438
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageListAdapter;->initContactImage(Landroid/content/Context;)V

    .line 440
    :cond_0
    sget-object v3, Lcom/android/mms/ui/LockedMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v3, v7

    .line 442
    .local v1, returnContactImage:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_1

    move-object v2, v1

    .line 472
    .end local v1           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .local v2, returnContactImage:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 447
    .end local v2           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .restart local v1       #returnContactImage:Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    .line 448
    .local v0, imageNum:I
    iget-wide v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mThreadId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 449
    iget-wide v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mThreadId:J

    const-wide/16 v5, 0x5

    rem-long/2addr v3, v5

    long-to-int v0, v3

    .line 452
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 469
    sget-object v3, Lcom/android/mms/ui/LockedMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v3, v7

    :goto_1
    move-object v2, v1

    .line 472
    .end local v1           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .restart local v2       #returnContactImage:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 454
    .end local v2           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .restart local v1       #returnContactImage:Landroid/graphics/drawable/Drawable;
    :pswitch_0
    sget-object v3, Lcom/android/mms/ui/LockedMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    aget-object v1, v3, v4

    .line 455
    goto :goto_1

    .line 457
    :pswitch_1
    sget-object v3, Lcom/android/mms/ui/LockedMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    aget-object v1, v3, v4

    .line 458
    goto :goto_1

    .line 460
    :pswitch_2
    sget-object v3, Lcom/android/mms/ui/LockedMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x3

    aget-object v1, v3, v4

    .line 461
    goto :goto_1

    .line 463
    :pswitch_3
    sget-object v3, Lcom/android/mms/ui/LockedMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x4

    aget-object v1, v3, v4

    .line 464
    goto :goto_1

    .line 466
    :pswitch_4
    sget-object v3, Lcom/android/mms/ui/LockedMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x5

    aget-object v1, v3, v4

    .line 467
    goto :goto_1

    .line 452
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
    .line 307
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    neg-long p1, p1

    .line 310
    .end local p1
    :cond_0
    return-wide p1
.end method

.method private initContactImage(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 426
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    .line 427
    sget-object v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 428
    sget-object v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020247

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 429
    sget-object v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020248

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 430
    sget-object v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020249

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 431
    sget-object v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 432
    sget-object v0, Lcom/android/mms/ui/LockedMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 433
    return-void
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 300
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    const/4 v0, 0x0

    .line 303
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isInboxMessage(Ljava/lang/String;Landroid/database/Cursor;)Z
    .locals 4
    .parameter "msgType"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 703
    const-string v3, "mms"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 704
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 706
    .local v0, mmsBoxType:I
    if-ne v0, v2, :cond_2

    .line 716
    .end local v0           #mmsBoxType:I
    :cond_0
    :goto_0
    return v2

    .line 708
    :cond_1
    const-string v3, "sms"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 709
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 711
    .local v1, smsBoxType:I
    if-eq v1, v2, :cond_0

    .line 716
    .end local v1           #smsBoxType:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateAvatarView(Lcom/android/mms/data/ContactList;)V
    .locals 8
    .parameter "recipients"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 345
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 347
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 348
    invoke-virtual {p1, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 349
    .local v1, contact:Lcom/android/mms/data/Contact;
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/mms/ui/LockedMessageListAdapter;->getContactImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 350
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, number:Ljava/lang/String;
    const-string v3, "CBmessages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 354
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02023c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 390
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #number:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 391
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v7}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 392
    iget v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    if-nez v3, :cond_7

    .line 393
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 396
    :goto_1
    return-void

    .line 356
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    .restart local v2       #number:Ljava/lang/String;
    :cond_0
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 358
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02024f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 368
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 371
    :cond_2
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 372
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v2, v5}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    .line 375
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 376
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v2, v5}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    .line 378
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 381
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #number:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 382
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/LockedMessageListAdapter;->getContactImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 386
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020244

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 395
    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v7}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 161
    move-object/from16 v11, p1

    .line 162
    .local v11, v:Landroid/view/View;
    if-nez v11, :cond_0

    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v12, :cond_0

    .line 163
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    iget v13, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->m_nViewResourceId:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 167
    :cond_0
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v12

    if-nez v12, :cond_1

    .line 168
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 171
    :cond_1
    const v12, 0x7f0e012a

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    iput-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mRootLayout:Landroid/widget/LinearLayout;

    .line 172
    const v12, 0x7f0e00dc

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    .line 173
    const v12, 0x7f0e00a2

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    .line 174
    const v12, 0x7f0e00d9

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mDateView:Landroid/widget/TextView;

    .line 175
    const v12, 0x7f0e00d6

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mStatusView:Landroid/widget/TextView;

    .line 176
    const v12, 0x7f0e012b

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mLockedMsgIconView:Landroid/widget/ImageView;

    .line 177
    const v12, 0x7f0e00d4

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/QuickContactBadge;

    iput-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 178
    const v12, 0x7f0e00db

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    iput-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    .line 179
    const v12, 0x7f0e012c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mTypeView:Landroid/widget/ImageView;

    .line 180
    const v12, 0x7f0e00d5

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    iput-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    .line 181
    const v12, 0x7f0e00da

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgPointer:Landroid/widget/ImageView;

    .line 183
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 184
    .local v6, oldFontSize:Ljava/lang/Integer;
    if-nez v6, :cond_8

    .line 185
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    iget v13, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFontSize:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 193
    :cond_2
    :goto_0
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v12, v12, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 194
    .local v9, szMsgType:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v12, v12, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 197
    .local v3, lMsgId:J
    move-object/from16 v0, p3

    invoke-virtual {p0, v9, v3, v4, v0}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/BaseMessageItem;

    move-result-object v5

    .line 199
    .local v5, msgItem:Lcom/android/mms/ui/BaseMessageItem;
    iget v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    if-lez v12, :cond_b

    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, checked:Z
    const-string v12, "sms"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 202
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 209
    :goto_1
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 217
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v12, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    if-nez v1, :cond_3

    .line 219
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    check-cast v12, Lcom/android/mms/ui/LockedMessageManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/LockedMessageManager;->setMessageSelectAll(Z)V

    .line 226
    .end local v1           #checked:Z
    :cond_3
    :goto_2
    iget-object v12, v5, Lcom/android/mms/ui/BaseMessageItem;->mRecipientIds:Ljava/lang/String;

    if-nez v12, :cond_4

    .line 227
    const-string v12, ""

    iput-object v12, v5, Lcom/android/mms/ui/BaseMessageItem;->mRecipientIds:Ljava/lang/String;

    .line 231
    :cond_4
    iget-object v12, v5, Lcom/android/mms/ui/BaseMessageItem;->mRecipientIds:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v7

    .line 233
    .local v7, recipients:Lcom/android/mms/data/ContactList;
    const-string v8, ""

    .line 234
    .local v8, szFrom:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v12

    if-nez v12, :cond_d

    .line 235
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 236
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0188

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 248
    :cond_5
    :goto_3
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    const-string v12, "mms"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 252
    iget-object v10, v5, Lcom/android/mms/ui/BaseMessageItem;->mSubject:Ljava/lang/String;

    .line 253
    .local v10, szSubject:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 254
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0010

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 259
    :cond_6
    :goto_4
    move-object/from16 v0, p3

    invoke-direct {p0, v9, v0}, Lcom/android/mms/ui/LockedMessageListAdapter;->isInboxMessage(Ljava/lang/String;Landroid/database/Cursor;)Z

    move-result v12

    if-eqz v12, :cond_10

    const v2, 0x7f020245

    .line 260
    .local v2, icon:I
    :goto_5
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mTypeView:Landroid/widget/ImageView;

    if-eqz v12, :cond_7

    .line 261
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mTypeView:Landroid/widget/ImageView;

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 262
    :cond_7
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mDateView:Landroid/widget/TextView;

    iget-object v13, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020041

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 267
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mDateView:Landroid/widget/TextView;

    iget-wide v13, v5, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mStatusView:Landroid/widget/TextView;

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFontSize:I

    invoke-direct {p0, v12}, Lcom/android/mms/ui/LockedMessageListAdapter;->changeFontSize(I)V

    .line 276
    invoke-virtual {v5}, Lcom/android/mms/ui/BaseMessageItem;->getThreadId()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mThreadId:J

    .line 278
    invoke-direct {p0, v7}, Lcom/android/mms/ui/LockedMessageListAdapter;->updateAvatarView(Lcom/android/mms/data/ContactList;)V

    .line 279
    return-void

    .line 187
    .end local v2           #icon:I
    .end local v3           #lMsgId:J
    .end local v5           #msgItem:Lcom/android/mms/ui/BaseMessageItem;
    .end local v7           #recipients:Lcom/android/mms/data/ContactList;
    .end local v8           #szFrom:Ljava/lang/String;
    .end local v9           #szMsgType:Ljava/lang/String;
    .end local v10           #szSubject:Ljava/lang/String;
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget v13, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFontSize:I

    if-eq v12, v13, :cond_2

    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageListAdapter;->createFromView()V

    .line 189
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFromView:Landroid/widget/TextView;

    iget v13, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFontSize:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 203
    .restart local v1       #checked:Z
    .restart local v3       #lMsgId:J
    .restart local v5       #msgItem:Lcom/android/mms/ui/BaseMessageItem;
    .restart local v9       #szMsgType:Ljava/lang/String;
    :cond_9
    const-string v12, "wpm"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 204
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_1

    .line 206
    :cond_a
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_1

    .line 221
    .end local v1           #checked:Z
    :cond_b
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 222
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 238
    .restart local v7       #recipients:Lcom/android/mms/data/ContactList;
    .restart local v8       #szFrom:Ljava/lang/String;
    :cond_c
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a000f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 240
    :cond_d
    const-string v12, ", "

    invoke-virtual {v7, v12}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 241
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 242
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 243
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0188

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 245
    :cond_e
    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a000f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 256
    :cond_f
    iget-object v10, v5, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    .restart local v10       #szSubject:Ljava/lang/String;
    goto/16 :goto_4

    .line 259
    :cond_10
    const v2, 0x7f020246

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

    .line 399
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Landroid/widget/QuickContactBadge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 401
    .local v0, AvatarLP:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x3

    .line 403
    .local v1, fontSize:I
    iget v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    if-nez v2, :cond_0

    .line 404
    iget v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFontSize:I

    .line 406
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 407
    :cond_1
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 408
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 409
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 410
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 422
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v0}, Landroid/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    return-void

    .line 411
    :cond_2
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 412
    :cond_3
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 413
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 414
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 415
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 417
    :cond_4
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 418
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 419
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 420
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public clearCheckedList()V
    .locals 2

    .prologue
    .line 598
    const-string v0, "Mms/LockedMessageListAdapter"

    const-string v1, "clearCheckedList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 601
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 602
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 603
    return-void
.end method

.method public getCMASAvatarwhenchangeFontSize()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const v5, 0x7f020241

    const v4, 0x7f02023e

    const/4 v3, 0x3

    .line 511
    const/4 v1, 0x3

    .line 513
    .local v1, fontSize:I
    iget v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    if-nez v2, :cond_0

    .line 514
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v1

    .line 516
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 517
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 518
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020240

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 532
    .local v0, TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 520
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02023f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 521
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eq v1, v3, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 522
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 523
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 525
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 527
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 528
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 530
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

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
    .line 286
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/LockedMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/BaseMessageItem;

    .line 287
    .local v1, item:Lcom/android/mms/ui/BaseMessageItem;
    if-nez v1, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/android/mms/ui/LockedMessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    :try_start_0
    new-instance v2, Lcom/android/mms/ui/BaseMessageItem;

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v2, v3, p1, p4, v4}, Lcom/android/mms/ui/BaseMessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v1           #item:Lcom/android/mms/ui/BaseMessageItem;
    .local v2, item:Lcom/android/mms/ui/BaseMessageItem;
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v4, v2, Lcom/android/mms/ui/BaseMessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/mms/ui/BaseMessageItem;->getMsgId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/LockedMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 295
    .end local v2           #item:Lcom/android/mms/ui/BaseMessageItem;
    .restart local v1       #item:Lcom/android/mms/ui/BaseMessageItem;
    :cond_0
    :goto_0
    return-object v1

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Lcom/google/android/mms/MmsException;
    :goto_1
    const-string v3, "Mms/LockedMessageListAdapter"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
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

    .line 494
    const/4 v0, 0x3

    .line 496
    .local v0, fontSize:I
    iget v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    if-nez v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    .line 499
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 504
    :goto_0
    return-object v1

    .line 501
    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 502
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 504
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getCheckedCount()I
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentListMode()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    return v0
.end method

.method public getWpmAvatarwhenchangeFontSize()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const v2, 0x7f02024f

    .line 477
    const/4 v0, 0x3

    .line 479
    .local v0, fontSize:I
    iget v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    if-nez v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    .line 482
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 483
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020250

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 487
    :goto_0
    return-object v1

    .line 484
    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 485
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 487
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public initListItemSelectedMessagePos()V
    .locals 2

    .prologue
    .line 724
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mSelectedMessagePos:J

    .line 725
    return-void
.end method

.method public isCheckedMessageId(JLjava/lang/String;)Z
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 634
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 639
    :goto_0
    return v0

    .line 636
    :cond_0
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

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
    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->m_nViewResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 546
    const-string v0, "Mms/LockedMessageListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/LockedMessageListAdapter;)V

    .line 552
    :cond_0
    return-void
.end method

.method public refreshFontSize()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFontSize:I

    .line 132
    return-void
.end method

.method public resetCheckedList()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 574
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 575
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 576
    return-void
.end method

.method public setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 644
    return-void
.end method

.method public setChecked(JLjava/lang/String;)V
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 579
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 584
    :cond_2
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 585
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 590
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setFontSize(I)V
    .locals 0
    .parameter "fontSize"

    .prologue
    .line 282
    iput p1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mFontSize:I

    .line 283
    return-void
.end method

.method public setListItemSelected(J)V
    .locals 0
    .parameter "messagePos"

    .prologue
    .line 720
    iput-wide p1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mSelectedMessagePos:J

    .line 721
    return-void
.end method

.method public setMessageListMode(I)V
    .locals 1
    .parameter "nListMode"

    .prologue
    .line 560
    iget v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    if-ne v0, p1, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    iput p1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    .line 565
    iget v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mMsgListMode:I

    if-lez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 567
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 568
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;

    .line 542
    return-void
.end method

.method public toggleCheckBox(JLjava/lang/String;)Z
    .locals 3
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    const/4 v0, 0x0

    .line 606
    const-string v1, "sms"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 626
    :goto_0
    return v0

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 612
    :cond_1
    const-string v1, "wpm"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 613
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 614
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 617
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 619
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 620
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 623
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
