.class public Lcom/android/mms/ui/ConversationListItem;
.super Landroid/widget/LinearLayout;
.source "ConversationListItem.java"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Lcom/android/mms/data/Contact$UpdateListener;


# static fields
.field public static LIST_FROM_TEXT_SIZE_HUGE:F = 0.0f

.field public static LIST_FROM_TEXT_SIZE_LARGE:F = 0.0f

.field public static LIST_FROM_TEXT_SIZE_NORMAL:F = 0.0f

.field public static LIST_FROM_TEXT_SIZE_SMALL:F = 0.0f

.field public static LIST_FROM_TEXT_SIZE_TINY:F = 0.0f

.field public static LIST_HEIGHT_HUGE:I = 0x0

.field public static LIST_HEIGHT_LARGE:I = 0x0

.field public static LIST_HEIGHT_NORMAL:I = 0x0

.field public static LIST_HEIGHT_SMALL:I = 0x0

.field public static LIST_HEIGHT_TINY:I = 0x0

.field public static LIST_SUBJECT_TEXT_SIZE_HUGE:F = 0.0f

.field public static LIST_SUBJECT_TEXT_SIZE_LARGE:F = 0.0f

.field public static LIST_SUBJECT_TEXT_SIZE_NORMAL:F = 0.0f

.field public static LIST_SUBJECT_TEXT_SIZE_SMALL:F = 0.0f

.field public static LIST_SUBJECT_TEXT_SIZE_TINY:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "Mms/ConversationListItem"

.field private static mDefaultContactImage:[Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

.field private mDateView:Landroid/widget/TextView;

.field private mFontSize:I

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIsDeleteMode:Z

.field private mIsMoveMode:Z

.field private mIsSaveMode:Z

.field private mListItemLayout:Landroid/widget/RelativeLayout;

.field private mMsgPointer:Landroid/widget/ImageView;

.field private mOldFontSize:I

.field private mPresenceView:Landroid/widget/ImageView;

.field mRootLayout:Landroid/widget/LinearLayout;

.field private mStatusView:Landroid/widget/TextView;

.field private mSubjectView:Landroid/widget/TextView;

.field private mUnreadCount:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x4190

    const/16 v1, 0x40

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    .line 95
    const/high16 v0, 0x4194

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_TINY:F

    .line 96
    const/high16 v0, 0x41a4

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_SMALL:F

    .line 97
    const/high16 v0, 0x41b0

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_NORMAL:F

    .line 98
    const/high16 v0, 0x41e4

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_LARGE:F

    .line 99
    const/high16 v0, 0x4220

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_HUGE:F

    .line 101
    const/high16 v0, 0x4140

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_TINY:F

    .line 102
    const/high16 v0, 0x4160

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_SMALL:F

    .line 103
    const/high16 v0, 0x4180

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    .line 104
    sput v2, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_LARGE:F

    .line 105
    sput v2, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_HUGE:F

    .line 107
    const/16 v0, 0x2c

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_TINY:I

    .line 108
    const/16 v0, 0x32

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_SMALL:I

    .line 109
    sput v1, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_NORMAL:I

    .line 110
    sput v1, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_LARGE:I

    .line 111
    sput v1, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_HUGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsSaveMode:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsMoveMode:Z

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    .line 92
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsSaveMode:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsMoveMode:Z

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    .line 92
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateFromView()V

    return-void
.end method

.method private formatMessage(Lcom/android/mms/ui/ConversationListItemData;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "ch"

    .prologue
    .line 204
    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationListItemData;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, from:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 206
    .local v3, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 207
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, recipient:Ljava/lang/String;
    const-string v4, "CBmessages"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 210
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0132

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    .end local v2           #recipient:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 219
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 220
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0188

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    :cond_1
    :goto_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 238
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    return-object v0

    .line 212
    .end local v0           #buf:Landroid/text/SpannableStringBuilder;
    .restart local v2       #recipient:Ljava/lang/String;
    :cond_2
    const-string v4, "Pushmessage"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a01bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 222
    .end local v2           #recipient:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getContactImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 783
    sget-object v3, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 784
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListItem;->initContactImage(Landroid/content/Context;)V

    .line 786
    :cond_0
    sget-object v3, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v3, v7

    .line 788
    .local v1, returnContactImage:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    if-nez v3, :cond_1

    move-object v2, v1

    .line 813
    .end local v1           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .local v2, returnContactImage:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 791
    .end local v2           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .restart local v1       #returnContactImage:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListItemData;->getThreadId()J

    move-result-wide v3

    const-wide/16 v5, 0x5

    rem-long/2addr v3, v5

    long-to-int v0, v3

    .line 793
    .local v0, imageNum:I
    packed-switch v0, :pswitch_data_0

    .line 810
    sget-object v3, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v3, v7

    :goto_1
    move-object v2, v1

    .line 813
    .end local v1           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .restart local v2       #returnContactImage:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 795
    .end local v2           #returnContactImage:Landroid/graphics/drawable/Drawable;
    .restart local v1       #returnContactImage:Landroid/graphics/drawable/Drawable;
    :pswitch_0
    sget-object v3, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    aget-object v1, v3, v4

    .line 796
    goto :goto_1

    .line 798
    :pswitch_1
    sget-object v3, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    aget-object v1, v3, v4

    .line 799
    goto :goto_1

    .line 801
    :pswitch_2
    sget-object v3, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x3

    aget-object v1, v3, v4

    .line 802
    goto :goto_1

    .line 804
    :pswitch_3
    sget-object v3, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x4

    aget-object v1, v3, v4

    .line 805
    goto :goto_1

    .line 807
    :pswitch_4
    sget-object v3, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x5

    aget-object v1, v3, v4

    .line 808
    goto :goto_1

    .line 793
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

.method private initContactImage(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 772
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    .line 773
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 774
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020247

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 775
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020248

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 776
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020249

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 777
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 778
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 779
    return-void
.end method

.method private reCreateNameView()V
    .locals 7

    .prologue
    .line 359
    const v5, 0x7f0e00dc

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 360
    .local v0, from:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 365
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 366
    .local v4, parent:Landroid/view/ViewGroup;
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 367
    .local v1, index:I
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 369
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 370
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030025

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0           #from:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 371
    .restart local v0       #from:Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 375
    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private setConversationListItemData(Lcom/android/mms/ui/ConversationListItemData;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    .line 186
    return-void
.end method

.method private updateAvatarView()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 242
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    .line 245
    .local v1, ch:Lcom/android/mms/ui/ConversationListItemData;
    if-nez v1, :cond_0

    .line 318
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 253
    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v8, :cond_a

    .line 254
    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    .line 255
    .local v2, contact:Lcom/android/mms/data/Contact;
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/mms/ui/ConversationListItem;->getContactImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 256
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, number:Ljava/lang/String;
    const-string v5, "CBmessages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 259
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 260
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02023c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 307
    .end local v2           #contact:Lcom/android/mms/data/Contact;
    .end local v4           #number:Ljava/lang/String;
    :goto_1
    const-string v3, ""

    .line 308
    .local v3, fromNumber:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItemData;->isCmas()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 309
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItemData;->getType()I

    move-result v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategory(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 314
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 263
    .end local v3           #fromNumber:Ljava/lang/String;
    .restart local v2       #contact:Lcom/android/mms/data/Contact;
    .restart local v4       #number:Ljava/lang/String;
    :cond_1
    const-string v5, "Pushmessage"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 264
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 265
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02024f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 268
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItemData;->isCmas()Z

    move-result v5

    if-ne v8, v5, :cond_5

    .line 269
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 271
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 272
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020242

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 273
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 274
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020241

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 276
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02023e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    .line 279
    :cond_5
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 280
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRCS()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 281
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 283
    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 287
    :cond_7
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 288
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v4, v8}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 291
    :cond_8
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 292
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v4, v8}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 294
    :cond_9
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 297
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #contact:Lcom/android/mms/data/Contact;
    .end local v4           #number:Ljava/lang/String;
    :cond_a
    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_b

    .line 298
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/mms/ui/ConversationListItem;->getContactImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 302
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_b
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020244

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 311
    .restart local v3       #fromNumber:Ljava/lang/String;
    :cond_c
    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItemData;->updateRecipients()V

    .line 312
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListItem;->formatMessage(Lcom/android/mms/ui/ConversationListItemData;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2
.end method

.method private updateFromView()V
    .locals 5

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    .line 323
    .local v0, ch:Lcom/android/mms/ui/ConversationListItemData;
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->isCmas()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    const v3, 0x7f0a02b6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 326
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategory(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 327
    const/high16 v1, -0x100

    .line 328
    .local v1, fontColor:I
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    .end local v1           #fontColor:I
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->updateRecipients()V

    .line 331
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->formatMessage(Lcom/android/mms/ui/ConversationListItemData;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 334
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->getPresenceResId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationListItem;->setPresenceIcon(I)V

    .line 336
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRemovingContactThumbnail()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 340
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/content/Context;Lcom/android/mms/ui/ConversationListItemData;Landroid/database/Cursor;)V
    .locals 12
    .parameter "context"
    .parameter "ch"
    .parameter "cursor"

    .prologue
    .line 520
    iget v0, p0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    iget v1, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    if-eq v0, v1, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->reCreateNameView()V

    .line 523
    iget v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    .line 526
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationListItem;->setConversationListItemData(Lcom/android/mms/ui/ConversationListItemData;)V

    .line 528
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getUnreadMessageCount()I

    move-result v11

    .line 529
    .local v11, unreadCount:I
    if-lez v11, :cond_4

    .line 530
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    :goto_0
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getDate()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 537
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 544
    :goto_1
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->hasDraft()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 546
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 548
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 618
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationListItem;->formatMessage(Lcom/android/mms/ui/ConversationListItemData;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    invoke-static {}, Lcom/android/mms/MmsConfig;->isVzwUI()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 626
    if-lez v11, :cond_b

    .line 628
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    const v1, -0x282829

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 629
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 631
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    const v1, -0x818182

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 640
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    .line 641
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 646
    :goto_4
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v7

    .line 649
    .local v7, contacts:Lcom/android/mms/data/ContactList;
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 650
    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->getPresenceResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->setPresenceIcon(I)V

    .line 652
    iget v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->changeFontSize(I)V

    .line 654
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->isCmas()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 656
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategory(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 666
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRemovingContactThumbnail()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 667
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 671
    :goto_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 672
    return-void

    .line 533
    .end local v7           #contacts:Lcom/android/mms/data/ContactList;
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 539
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 542
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 549
    :cond_6
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->hasError()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 551
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 553
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    const v1, 0x7f0a0184

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 554
    :cond_7
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->hasSending()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 555
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 557
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    const v1, 0x7f0a0183

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 558
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    .line 560
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMMSStatusUIForCHN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getThreadId()J

    move-result-wide v0

    long-to-int v10, v0

    .line 562
    .local v10, thread_id:I
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "m_id"

    aput-object v1, v3, v0

    .line 595
    .local v3, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isMmsAvailable(Landroid/content/Context;)Z

    move-result v9

    .line 596
    .local v9, isAvail:Z
    if-nez v9, :cond_1

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, where:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 600
    .local v8, cursorCdma:Landroid/database/Cursor;
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 601
    const-string v0, "Mms/ConversationListItem"

    const-string v1, "pending status : change to pending status"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    const v1, 0x7f0a0312

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 604
    :cond_8
    if-eqz v8, :cond_1

    .line 605
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 610
    .end local v3           #projection:[Ljava/lang/String;
    .end local v4           #where:Ljava/lang/String;
    .end local v8           #cursorCdma:Landroid/database/Cursor;
    .end local v9           #isAvail:Z
    .end local v10           #thread_id:I
    :cond_9
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->hasPending()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 611
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 613
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    const v1, 0x7f0a00c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 614
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    goto/16 :goto_2

    .line 616
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    goto/16 :goto_2

    .line 633
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    const v1, -0x676768

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 634
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 636
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    const v1, -0x676768

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 643
    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 670
    .restart local v7       #contacts:Lcom/android/mms/data/ContactList;
    :cond_d
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    goto/16 :goto_5
.end method

.method public changeFontSize(I)V
    .locals 12
    .parameter "fontSize"

    .prologue
    .line 379
    const/4 v8, 0x4

    if-ge p1, v8, :cond_0

    .line 427
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 383
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 384
    .local v0, fromLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 385
    .local v4, presenceLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 386
    .local v7, unreadCountLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 388
    .local v6, statusLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 389
    .local v5, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 422
    :goto_1
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 391
    :pswitch_0
    const v8, 0x7f090014

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 393
    const v8, 0x7f090016

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 394
    const v8, 0x7f090018

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v2, v8

    .line 395
    .local v2, largeTopMargin:I
    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 396
    add-int/lit8 v8, v2, -0x5

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 397
    add-int/lit8 v8, v2, -0x5

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 400
    .end local v2           #largeTopMargin:I
    :pswitch_1
    const v8, 0x7f090015

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 402
    const v8, 0x7f090017

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 403
    const v8, 0x7f090019

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v1, v8

    .line 404
    .local v1, hugeTopMargin:I
    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 406
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteThemeATT()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 408
    add-int/lit8 v8, v1, -0x14

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 409
    add-int/lit8 v8, v1, -0x14

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 417
    :goto_2
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09000d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 413
    :cond_1
    iput v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 414
    iput v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAvatarView()Landroid/widget/QuickContactBadge;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method public getCMASAvatarwhenchangeFontSize()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const v5, 0x7f020241

    const v4, 0x7f02023e

    const/4 v3, 0x3

    .line 495
    const/4 v1, 0x3

    .line 497
    .local v1, fontSize:I
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    if-nez v2, :cond_0

    .line 498
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v1

    .line 500
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 501
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 502
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020240

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 516
    .local v0, TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 504
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02023f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 505
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eq v1, v3, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 506
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 507
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 509
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 511
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 512
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 514
    .end local v0           #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #TempAvatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getCbMsgAvatarwhenchangeFontSize()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const v2, 0x7f02023c

    .line 476
    const/4 v0, 0x3

    .line 478
    .local v0, fontSize:I
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    if-nez v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    .line 481
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 486
    :goto_0
    return-object v1

    .line 483
    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 484
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 486
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getCheckBoxView()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 764
    const v0, 0x7f0e00db

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getConversationHeaderRootLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mRootLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 758
    const v0, 0x7f0e00d3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mRootLayout:Landroid/widget/LinearLayout;

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mRootLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getConversationListItemData()Lcom/android/mms/ui/ConversationListItemData;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    return-object v0
.end method

.method public getWpmAvatarwhenchangeFontSize()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const v2, 0x7f02024f

    .line 459
    const/4 v0, 0x3

    .line 461
    .local v0, fontSize:I
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    if-nez v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    .line 464
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020250

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 469
    :goto_0
    return-object v1

    .line 466
    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 467
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 469
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 14
    .parameter "v"
    .parameter "event"

    .prologue
    .line 818
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    .line 819
    .local v1, action:I
    const/4 v7, 0x0

    .line 821
    .local v7, result:Z
    packed-switch v1, :pswitch_data_0

    .line 880
    const-string v10, "DragDrop"

    const-string v11, "Unknown action type received by OnDragListener."

    invoke-static {v10, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :cond_0
    :goto_0
    return v7

    .line 823
    :pswitch_0
    const/4 v7, 0x1

    .line 824
    goto :goto_0

    .line 827
    :pswitch_1
    const/4 v7, 0x1

    .line 828
    goto :goto_0

    .line 831
    :pswitch_2
    const/4 v7, 0x1

    .line 832
    goto :goto_0

    .line 835
    :pswitch_3
    const/4 v7, 0x1

    .line 836
    goto :goto_0

    .line 839
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 841
    .local v2, clipData:Landroid/content/ClipData;
    if-eqz v2, :cond_0

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 843
    .local v0, ClipLabel:Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    .line 845
    .local v5, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 846
    const-string v10, "cropUri"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 847
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 848
    .local v3, item:Landroid/content/ClipData$Item;
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 849
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 851
    .local v4, mCropUri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    invoke-virtual {v10}, Lcom/android/mms/ui/ConversationListItemData;->getThreadId()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10, v4}, Lcom/android/mms/ui/MessageUtils;->openComposerWithCropedImage(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 852
    const/4 v7, 0x1

    goto :goto_0

    .line 856
    .end local v3           #item:Landroid/content/ClipData$Item;
    .end local v4           #mCropUri:Landroid/net/Uri;
    :cond_1
    const-string v10, "text/plain"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 857
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 858
    .restart local v3       #item:Landroid/content/ClipData$Item;
    const/4 v9, 0x0

    .line 860
    .local v9, textData:Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    .line 861
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    .line 862
    :cond_2
    if-eqz v9, :cond_0

    .line 863
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    invoke-virtual {v11}, Lcom/android/mms/ui/ConversationListItemData;->getThreadId()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v8

    .line 864
    .local v8, selectedConv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v6

    .line 866
    .local v6, recipients:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 867
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/android/mms/ui/MessageUtils;->openComposerWithText(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const/4 v7, 0x1

    goto :goto_0

    .line 876
    .end local v0           #ClipLabel:Ljava/lang/CharSequence;
    .end local v2           #clipData:Landroid/content/ClipData;
    .end local v3           #item:Landroid/content/ClipData$Item;
    .end local v5           #mimeType:Ljava/lang/String;
    .end local v6           #recipients:Ljava/lang/String;
    .end local v8           #selectedConv:Lcom/android/mms/data/Conversation;
    .end local v9           #textData:Ljava/lang/CharSequence;
    :pswitch_5
    const/4 v7, 0x1

    .line 877
    goto :goto_0

    .line 821
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 126
    const v0, 0x7f0e00d3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mRootLayout:Landroid/widget/LinearLayout;

    .line 127
    const v0, 0x7f0e00dc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0e00a2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0e00d9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0e00d6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0e00d8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    .line 135
    const v0, 0x7f0e00d4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 136
    const v0, 0x7f0e00db

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 137
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    .line 140
    const v0, 0x7f0e00d7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0e00d5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    .line 145
    const v0, 0x7f0e00da

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    .line 147
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 148
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ConversationListItem$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListItem$1;-><init>(Lcom/android/mms/ui/ConversationListItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 735
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 737
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    if-nez v0, :cond_0

    .line 745
    :goto_0
    return-void

    .line 740
    :cond_0
    if-eqz p1, :cond_1

    .line 741
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    goto :goto_0

    .line 743
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->unbind()V

    goto :goto_0
.end method

.method public setCheckBox(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 680
    return-void
.end method

.method public setDeleteMode(Z)V
    .locals 3
    .parameter "isDeleteMode"

    .prologue
    const/4 v2, 0x0

    .line 682
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    .line 683
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 695
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method public setFontSize(I)V
    .locals 0
    .parameter "fontSize"

    .prologue
    .line 753
    iput p1, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    .line 754
    return-void
.end method

.method public setMessagePointer(ZZ)V
    .locals 2
    .parameter "focus"
    .parameter "touch"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 164
    :cond_0
    if-eqz p2, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const v1, 0x7f02025a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    :goto_1
    if-eqz p1, :cond_2

    .line 173
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const v1, 0x7f020259

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMoveMode(Z)V
    .locals 3
    .parameter "isMoveMode"

    .prologue
    const/4 v2, 0x0

    .line 699
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsMoveMode:Z

    .line 700
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsMoveMode:Z

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 712
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method public setPresenceIcon(I)V
    .locals 2
    .parameter "iconId"

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSaveMode(Z)V
    .locals 3
    .parameter "isSaveMode"

    .prologue
    const/4 v2, 0x0

    .line 716
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsSaveMode:Z

    .line 717
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsSaveMode:Z

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 729
    :goto_0
    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method public setTextColor(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "isDeleting"

    .prologue
    const v1, -0x777778

    .line 192
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    const v2, 0x207000e

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 198
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    const v2, 0x207000f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public final unbind()V
    .locals 0

    .prologue
    .line 675
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 676
    return-void
.end method
