.class public Lcom/android/mms/ui/SpamMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "SpamMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field public static final CACHE_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "Mms/SpamMessageListAdapter"

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
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field public mMsgListMode:I

.field private mMsgPointer:Landroid/widget/ImageView;

.field mOnContentChangedListener:Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;

.field mRootLayout:Landroid/widget/LinearLayout;

.field private mSelectedMessagePos:J

.field private mStatusView:Landroid/widget/TextView;

.field private mSubjectView:Landroid/widget/TextView;

.field private m_LayoutInflater:Landroid/view/LayoutInflater;

.field private m_nViewResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/SpamMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "textViewResourceId"

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 72
    iput v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListMode:I

    .line 82
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFontSize:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    .line 88
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mSelectedMessagePos:J

    .line 94
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    .line 95
    iput p3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->m_nViewResourceId:I

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    .line 104
    new-instance v0, Lcom/android/mms/ui/SpamMessageListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/SpamMessageListAdapter$1;-><init>(Lcom/android/mms/ui/SpamMessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 111
    if-nez p2, :cond_0

    .line 112
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SpamMessageListAdapter;->setFontSize(I)V

    .line 118
    return-void

    .line 114
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method private changeFontSize(I)V
    .locals 7
    .parameter "fontSize"

    .prologue
    .line 259
    const/4 v3, 0x4

    if-ge p1, v3, :cond_0

    .line 285
    :goto_0
    return-void

    .line 262
    :cond_0
    const-string v3, "Mms/SpamMessageListAdapter"

    const-string v4, "changeFontSize"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 265
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 267
    .local v0, fromLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 268
    .local v2, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 283
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 270
    :pswitch_0
    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 272
    const v3, 0x7f090016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 275
    :pswitch_1
    const v3, 0x7f090015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 277
    const v3, 0x7f090017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 278
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 268
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getContactImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 384
    sget-object v3, Lcom/android/mms/ui/SpamMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 385
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageListAdapter;->initContactImage(Landroid/content/Context;)V

    .line 387
    :cond_0
    sget-object v3, Lcom/android/mms/ui/SpamMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v3, v4

    .line 389
    .local v1, returnContactImage:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_1

    move-object v2, v1

    .line 414
    .end local v1           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .local v2, returnContactImage:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 392
    .end local v2           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .restart local v1       #returnContactImage:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    rem-int/lit8 v0, v3, 0x5

    .line 394
    .local v0, imageNum:I
    packed-switch v0, :pswitch_data_0

    .line 411
    sget-object v3, Lcom/android/mms/ui/SpamMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v3, v4

    :goto_1
    move-object v2, v1

    .line 414
    .end local v1           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .restart local v2       #returnContactImage:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 396
    .end local v2           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .restart local v1       #returnContactImage:Landroid/graphics/drawable/Drawable;
    :pswitch_0
    sget-object v3, Lcom/android/mms/ui/SpamMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    aget-object v1, v3, v4

    .line 397
    goto :goto_1

    .line 399
    :pswitch_1
    sget-object v3, Lcom/android/mms/ui/SpamMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    aget-object v1, v3, v4

    .line 400
    goto :goto_1

    .line 402
    :pswitch_2
    sget-object v3, Lcom/android/mms/ui/SpamMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x3

    aget-object v1, v3, v4

    .line 403
    goto :goto_1

    .line 405
    :pswitch_3
    sget-object v3, Lcom/android/mms/ui/SpamMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x4

    aget-object v1, v3, v4

    .line 406
    goto :goto_1

    .line 408
    :pswitch_4
    sget-object v3, Lcom/android/mms/ui/SpamMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x5

    aget-object v1, v3, v4

    .line 409
    goto :goto_1

    .line 394
    nop

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
    .line 251
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    neg-long p1, p1

    .line 254
    .end local p1
    :cond_0
    return-wide p1
.end method

.method private initContactImage(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 373
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lcom/android/mms/ui/SpamMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    .line 374
    sget-object v0, Lcom/android/mms/ui/SpamMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 375
    sget-object v0, Lcom/android/mms/ui/SpamMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020247

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 376
    sget-object v0, Lcom/android/mms/ui/SpamMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020248

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 377
    sget-object v0, Lcom/android/mms/ui/SpamMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020249

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 378
    sget-object v0, Lcom/android/mms/ui/SpamMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 379
    sget-object v0, Lcom/android/mms/ui/SpamMessageListAdapter;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 380
    return-void
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 244
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateAvatarView(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Contact;)V
    .locals 7
    .parameter "msgItem"
    .parameter "contact"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 291
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 296
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SpamMessageListAdapter;->getContactImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 297
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, number:Ljava/lang/String;
    const-string v2, "CBmessages"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 301
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02023c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 336
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v6}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 339
    iget v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListMode:I

    if-nez v2, :cond_5

    .line 340
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v5}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 343
    :goto_1
    return-void

    .line 303
    :cond_0
    const-string v2, "Pushmessage"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 305
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 315
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 319
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v1, v5}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    .line 322
    :cond_3
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 323
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v1, v5}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    .line 325
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 342
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v6}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 133
    move-object v10, p1

    .line 134
    .local v10, v:Landroid/view/View;
    if-nez v10, :cond_0

    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v11, :cond_0

    .line 135
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    iget v12, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->m_nViewResourceId:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 138
    :cond_0
    const v11, 0x7f0e0232

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mRootLayout:Landroid/widget/LinearLayout;

    .line 139
    const v11, 0x7f0e00dc

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    .line 140
    const v11, 0x7f0e00a2

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    .line 141
    const v11, 0x7f0e00d9

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mDateView:Landroid/widget/TextView;

    .line 142
    const v11, 0x7f0e00d6

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mStatusView:Landroid/widget/TextView;

    .line 143
    const v11, 0x7f0e00d4

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/QuickContactBadge;

    iput-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 144
    const v11, 0x7f0e00db

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    iput-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    .line 145
    const v11, 0x7f0e00d5

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    iput-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    .line 146
    const v11, 0x7f0e00da

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgPointer:Landroid/widget/ImageView;

    .line 148
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v11, v11, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, szMsgType:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v11, v11, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 152
    .local v4, lMsgId:J
    move-object/from16 v0, p3

    invoke-virtual {p0, v8, v4, v5, v0}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    .line 154
    .local v6, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v6, :cond_1

    .line 155
    const-string v11, "Mms/SpamMessageListAdapter"

    const-string v12, "msgItem is null, bind view fail"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 159
    :cond_1
    iget v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListMode:I

    if-lez v11, :cond_6

    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, checked:Z
    const-string v11, "sms"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 162
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 169
    :goto_1
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 177
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v11, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 178
    if-nez v2, :cond_2

    .line 179
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/android/mms/ui/SpamMessageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/SpamMessageManager;->setMessageSelectAll(Z)V

    .line 187
    .end local v2           #checked:Z
    :cond_2
    :goto_2
    iget-object v1, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 188
    .local v1, addr:Ljava/lang/String;
    const/4 v11, 0x1

    invoke-static {v1, v11}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    .line 190
    .local v3, contact:Lcom/android/mms/data/Contact;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 191
    const-string v7, ""

    .line 192
    .local v7, szFrom:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 193
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0188

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 196
    :goto_3
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .end local v7           #szFrom:Ljava/lang/String;
    :goto_4
    const-string v11, "mms"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 203
    iget-object v9, v6, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 204
    .local v9, szSubject:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 205
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0010

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 209
    :cond_3
    :goto_5
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mDateView:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020041

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 214
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mDateView:Landroid/widget/TextView;

    iget-wide v12, v6, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mStatusView:Landroid/widget/TextView;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFontSize:I

    invoke-direct {p0, v11}, Lcom/android/mms/ui/SpamMessageListAdapter;->changeFontSize(I)V

    .line 221
    invoke-direct {p0, v6, v3}, Lcom/android/mms/ui/SpamMessageListAdapter;->updateAvatarView(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Contact;)V

    goto/16 :goto_0

    .line 163
    .end local v1           #addr:Ljava/lang/String;
    .end local v3           #contact:Lcom/android/mms/data/Contact;
    .end local v9           #szSubject:Ljava/lang/String;
    .restart local v2       #checked:Z
    :cond_4
    const-string v11, "wpm"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 164
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_1

    .line 166
    :cond_5
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_1

    .line 181
    .end local v2           #checked:Z
    :cond_6
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 182
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 195
    .restart local v1       #addr:Ljava/lang/String;
    .restart local v3       #contact:Lcom/android/mms/data/Contact;
    .restart local v7       #szFrom:Ljava/lang/String;
    :cond_7
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a000f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    .line 198
    .end local v7           #szFrom:Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 207
    :cond_9
    iget-object v9, v6, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .restart local v9       #szSubject:Ljava/lang/String;
    goto :goto_5
.end method

.method public changeAvatarSizewhenchangeFontSize(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/16 v6, 0x5a

    const/16 v5, 0x9

    const/16 v4, 0x68

    const/16 v3, 0xc

    .line 346
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Landroid/widget/QuickContactBadge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 348
    .local v0, AvatarLP:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x3

    .line 350
    .local v1, fontSize:I
    iget v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListMode:I

    if-nez v2, :cond_0

    .line 351
    iget v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFontSize:I

    .line 353
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 354
    :cond_1
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 355
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 356
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 357
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 369
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v0}, Landroid/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    return-void

    .line 358
    :cond_2
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 359
    :cond_3
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 360
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 361
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 362
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 364
    :cond_4
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 365
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 366
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 367
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public clearCheckedList()V
    .locals 2

    .prologue
    .line 540
    const-string v0, "Mms/SpamMessageListAdapter"

    const-string v1, "clearCheckedList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 543
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 544
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 545
    return-void
.end method

.method public getCMASAvatarwhenchangeFontSize()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const v5, 0x7f020241

    const v4, 0x7f02023e

    const/4 v3, 0x3

    .line 453
    const/4 v1, 0x3

    .line 455
    .local v1, fontSize:I
    iget v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListMode:I

    if-nez v2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v1

    .line 458
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 459
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 460
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020240

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 474
    .local v0, TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 462
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02023f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 463
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eq v1, v3, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 464
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 465
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 467
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 469
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 470
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 472
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

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
    .line 230
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/SpamMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;

    .line 231
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/android/mms/ui/SpamMessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/SpamMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    :goto_0
    return-object v0

    .line 235
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 236
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Lcom/google/android/mms/MmsException;
    :goto_1
    const-string v1, "Mms/SpamMessageListAdapter"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
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

    .line 436
    const/4 v0, 0x3

    .line 438
    .local v0, fontSize:I
    iget v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListMode:I

    if-nez v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    .line 441
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 446
    :goto_0
    return-object v1

    .line 443
    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 444
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 446
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getCheckedCount()I
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentListMode()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListMode:I

    return v0
.end method

.method public getWpmAvatarwhenchangeFontSize()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const v2, 0x7f02024f

    .line 419
    const/4 v0, 0x3

    .line 421
    .local v0, fontSize:I
    iget v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListMode:I

    if-nez v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    .line 424
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020250

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 429
    :goto_0
    return-object v1

    .line 426
    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 427
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 429
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public initListItemSelectedMessagePos()V
    .locals 2

    .prologue
    .line 650
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mSelectedMessagePos:J

    .line 651
    return-void
.end method

.method public isCheckedMessageId(JLjava/lang/String;)Z
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 576
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 581
    :goto_0
    return v0

    .line 578
    :cond_0
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

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
    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->m_nViewResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 488
    const-string v0, "Mms/SpamMessageListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/SpamMessageListAdapter;)V

    .line 494
    :cond_0
    return-void
.end method

.method public refreshFontSize()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFontSize:I

    .line 124
    return-void
.end method

.method public resetCheckedList()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 516
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 517
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 518
    return-void
.end method

.method public setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 586
    return-void
.end method

.method public setChecked(JLjava/lang/String;)V
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 521
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 526
    :cond_2
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 527
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 532
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setFontSize(I)V
    .locals 0
    .parameter "fontSize"

    .prologue
    .line 226
    iput p1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFontSize:I

    .line 227
    return-void
.end method

.method public setListItemSelected(J)V
    .locals 0
    .parameter "messagePos"

    .prologue
    .line 646
    iput-wide p1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mSelectedMessagePos:J

    .line 647
    return-void
.end method

.method public setMessageListMode(I)V
    .locals 1
    .parameter "nListMode"

    .prologue
    .line 502
    iget v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListMode:I

    if-ne v0, p1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iput p1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListMode:I

    .line 507
    iget v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListMode:I

    if-lez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 509
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 510
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;

    .line 484
    return-void
.end method

.method public toggleCheckBox(JLjava/lang/String;)Z
    .locals 3
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    const/4 v0, 0x0

    .line 548
    const-string v1, "sms"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 549
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 568
    :goto_0
    return v0

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 554
    :cond_1
    const-string v1, "wpm"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 555
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 556
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 561
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 562
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 565
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
