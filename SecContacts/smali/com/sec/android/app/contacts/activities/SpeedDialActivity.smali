.class public Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
.super Landroid/app/Activity;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialDialogListener;,
        Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;,
        Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;,
        Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;,
        Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;
    }
.end annotation


# static fields
.field private static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field public static final DATA_PROJECTION:[Ljava/lang/String;

.field private static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final SPEED_DIAL_PROJECTION:[Ljava/lang/String;

.field private static final SPEED_DIAL_PROJECTION2:[Ljava/lang/String;


# instance fields
.field private final ACCOUNT_TYPE:Ljava/lang/String;

.field private final DISPLAY_NAME:Ljava/lang/String;

.field private final EMPTY_NUMBER:Ljava/lang/String;

.field LAUNCH_ANIMATION_DURATION:I

.field private final NUMBER:Ljava/lang/String;

.field private final NUMBER_IMAGES:[I

.field private final NUMBER_TYPE:Ljava/lang/String;

.field private PANEL_HEIGHT_CLICK:I

.field private PANEL_WIDTH_CLICK:I

.field private final PHOTO_NUMBER_IMAGES:[I

.field private final SPEEDDIAL_DEFAULT_IMAGES:[I

.field private final TYPE:Ljava/lang/String;

.field private checkedSelect:Z

.field private dragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

.field private isFirstAnimation:Z

.field private layoutHandler:Landroid/os/Handler;

.field private mAccountType:Ljava/lang/String;

.field private mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

.field private mBoddy:Landroid/widget/LinearLayout;

.field private mBodyText:Landroid/widget/TextView;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonDialog:Landroid/app/AlertDialog;

.field private mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

.field private mChangedDataIds:[J

.field private mChangedPosition:I

.field private mCheckedItems:[Z

.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private mCurrentMode:I

.field private mCustomMessageBody:Landroid/widget/LinearLayout;

.field private mCustomMessagePhoneNumber:Landroid/widget/TextView;

.field private mCustomMessageType:Landroid/widget/TextView;

.field private mDisplayName:Ljava/lang/String;

.field private mDoneButtonClickable:Z

.field mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

.field private mIPCallButtonDialog:Landroid/app/Dialog;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsMultiWindowSupported:Z

.field private mIsSpeedDialInBg:Z

.field private mLastClickedView:Landroid/view/View;

.field private mLastLongClickedName:Ljava/lang/CharSequence;

.field private mListDialog:Landroid/app/AlertDialog;

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mNumberType:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOrderOfValue:I

.field private mOriginDataIds:[J

.field private mPhotos:[Landroid/graphics/Bitmap;

.field private mSelectedPhoneNumber:Ljava/lang/String;

.field private mSpeedDialGrid:Landroid/widget/GridView;

.field private mSpeedDialUri:Landroid/net/Uri;

.field public mSpeedObserver:Landroid/database/ContentObserver;

.field private mTitle:Ljava/lang/String;

.field private mTitleBarHeight:F

.field private mTitleText:Landroid/widget/TextView;

.field private mType:Ljava/lang/String;

.field private oldPosition:I

.field private panelLeft:I

.field private panelTop:I

.field private selectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key_number"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "display_name_reverse"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "speed_dial_data_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    .line 135
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "key_number"

    aput-object v1, v0, v3

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v4

    const-string v1, "speed_dial_data_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION2:[Ljava/lang/String;

    .line 141
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "has_phone_number"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "display_name_alt"

    aput-object v1, v0, v6

    const-string v1, "photo_file_id"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 148
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 152
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "mimetype"

    aput-object v1, v0, v5

    const-string v1, "is_super_primary"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->DATA_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 114
    const-string v0, "TYPE"

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->TYPE:Ljava/lang/String;

    .line 115
    const-string v0, "NUMBER_TYPE"

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->NUMBER_TYPE:Ljava/lang/String;

    .line 116
    const-string v0, "ACCOUNT_TYPE"

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->ACCOUNT_TYPE:Ljava/lang/String;

    .line 117
    const-string v0, "DISPLAY_NAME"

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->DISPLAY_NAME:Ljava/lang/String;

    .line 118
    const-string v0, "NUMBER"

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->NUMBER:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->EMPTY_NUMBER:Ljava/lang/String;

    .line 121
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    .line 158
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->NUMBER_IMAGES:[I

    .line 169
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PHOTO_NUMBER_IMAGES:[I

    .line 182
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEEDDIAL_DEFAULT_IMAGES:[I

    .line 201
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    .line 202
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    .line 204
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    .line 222
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->checkedSelect:Z

    .line 223
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    .line 228
    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelLeft:I

    .line 229
    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelTop:I

    .line 237
    new-array v0, v3, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    .line 258
    new-instance v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1812
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsSpeedDialInBg:Z

    .line 1813
    new-instance v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$13;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$13;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedObserver:Landroid/database/ContentObserver;

    .line 2408
    return-void

    .line 158
    :array_0
    .array-data 0x4
        0xa3t 0x3t 0x2t 0x7ft
        0xa4t 0x3t 0x2t 0x7ft
        0xa5t 0x3t 0x2t 0x7ft
        0xa6t 0x3t 0x2t 0x7ft
        0xa7t 0x3t 0x2t 0x7ft
        0xa8t 0x3t 0x2t 0x7ft
        0xa9t 0x3t 0x2t 0x7ft
        0xaat 0x3t 0x2t 0x7ft
        0xabt 0x3t 0x2t 0x7ft
    .end array-data

    .line 169
    :array_1
    .array-data 0x4
        0xc5t 0x3t 0x2t 0x7ft
        0xc6t 0x3t 0x2t 0x7ft
        0xc7t 0x3t 0x2t 0x7ft
        0xc8t 0x3t 0x2t 0x7ft
        0xc9t 0x3t 0x2t 0x7ft
        0xcat 0x3t 0x2t 0x7ft
        0xcbt 0x3t 0x2t 0x7ft
        0xcct 0x3t 0x2t 0x7ft
        0xcdt 0x3t 0x2t 0x7ft
    .end array-data

    .line 182
    :array_2
    .array-data 0x4
        0xbbt 0x3t 0x2t 0x7ft
        0xbct 0x3t 0x2t 0x7ft
        0xbdt 0x3t 0x2t 0x7ft
        0xbet 0x3t 0x2t 0x7ft
        0xbft 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method private FreshView()V
    .locals 6

    .prologue
    const v3, 0x40aa8f5c

    .line 642
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 644
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PANEL_WIDTH_CLICK:I

    .line 645
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PANEL_HEIGHT_CLICK:I

    .line 647
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->selectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PANEL_WIDTH_CLICK:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->selectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v2, v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelLeft:I

    .line 649
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->selectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelTop:I

    .line 651
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 653
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 655
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelLeft:I

    int-to-float v1, v1

    mul-float v2, v0, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelLeft:I

    .line 656
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelTop:I

    int-to-float v1, v1

    const v2, 0x409570a4

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelTop:I

    .line 663
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->dragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelLeft:I

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelTop:I

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelLeft:I

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PANEL_WIDTH_CLICK:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelTop:I

    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PANEL_HEIGHT_CLICK:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 665
    return-void

    .line 660
    :cond_0
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelLeft:I

    int-to-float v1, v1

    mul-float v2, v0, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelLeft:I

    .line 661
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelTop:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->panelTop:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->FreshView()V

    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsSpeedDialInBg:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->NUMBER_IMAGES:[I

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mColorStateList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PHOTO_NUMBER_IMAGES:[I

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleBarHeight:F

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->checkRemoveButtonEnable()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIPCallButtonDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->deleteSlot(Landroid/view/View;I)V

    return-void
.end method

.method private cancelChangeOrder(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 690
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 695
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 696
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 697
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PHOTO_NUMBER_IMAGES:[I

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 698
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mAdd:Landroid/widget/ImageView;

    const v1, 0x7f0203a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 699
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->NUMBER_IMAGES:[I

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 700
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->dragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private changeData(I)V
    .locals 12
    .parameter "destinationIndex"

    .prologue
    const-wide/16 v10, 0x0

    .line 668
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    add-int/lit8 v7, p1, -0x1

    aget-wide v6, v6, v7

    cmp-long v6, v6, v10

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    add-int/lit8 v7, p1, -0x1

    aget-wide v2, v6, v7

    .line 670
    .local v2, newId:J
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    iget v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    add-int/lit8 v7, v7, -0x1

    aget-wide v6, v6, v7

    cmp-long v6, v6, v10

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    iget v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    add-int/lit8 v7, v7, -0x1

    aget-wide v4, v6, v7

    .line 672
    .local v4, oldId:J
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    add-int/lit8 v7, p1, -0x1

    aput-wide v4, v6, v7

    .line 673
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    iget v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    add-int/lit8 v7, v7, -0x1

    aput-wide v2, v6, v7

    .line 675
    const/4 v1, 0x0

    .line 676
    .local v1, isDataChanged:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/16 v6, 0x8

    if-ge v0, v6, :cond_4

    .line 677
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    aget-wide v6, v6, v0

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    aget-wide v8, v8, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 678
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    aput-wide v10, v6, v0

    .line 676
    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 668
    .end local v0           #i:I
    .end local v1           #isDataChanged:Z
    .end local v2           #newId:J
    .end local v4           #oldId:J
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    add-int/lit8 v7, p1, -0x1

    aget-wide v2, v6, v7

    goto :goto_0

    .line 670
    .restart local v2       #newId:J
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    iget v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    add-int/lit8 v7, v7, -0x1

    aget-wide v4, v6, v7

    goto :goto_1

    .line 679
    .restart local v0       #i:I
    .restart local v1       #isDataChanged:Z
    .restart local v4       #oldId:J
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    aget-wide v6, v6, v0

    cmp-long v6, v6, v10

    if-eqz v6, :cond_0

    .line 680
    const/4 v1, 0x1

    goto :goto_3

    .line 683
    :cond_4
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setButtonClickable(Z)V

    .line 684
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->dragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v6, v6, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 685
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    .line 686
    return-void
.end method

.method private checkRemoveButtonEnable()V
    .locals 4

    .prologue
    .line 706
    const/4 v1, 0x0

    .line 707
    .local v1, result:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 709
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v2, v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 713
    const/4 v1, 0x1

    .line 714
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 707
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    goto :goto_1

    .line 721
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setButtonClickable(Z)V

    .line 722
    return-void
.end method

.method private configureUri()V
    .locals 4

    .prologue
    .line 1819
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1820
    return-void
.end method

.method private customActivityResult(ILandroid/content/Intent;)V
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 1043
    const/4 v1, -0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 1045
    const-string v1, "index"

    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    .line 1046
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1050
    :cond_1
    const-wide/16 v7, -0x1

    .line 1052
    const-string v1, "contact_id"

    const-wide/16 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1054
    const-wide/16 v1, -0x1

    cmp-long v1, v4, v1

    if-eqz v1, :cond_0

    .line 1057
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contact_id="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1060
    if-eqz v3, :cond_b

    .line 1061
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1062
    const-string v1, "_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1063
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-wide v10, v1

    .line 1066
    :goto_2
    const-wide/16 v1, -0x1

    cmp-long v1, v10, v1

    if-eqz v1, :cond_0

    .line 1072
    const-string v1, "raw_contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 1073
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 1075
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v4, "raw_contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1076
    const-wide/16 v2, -0x1

    .line 1078
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1079
    const/4 v1, 0x0

    .line 1080
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_9

    .line 1081
    :cond_2
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1083
    :try_start_0
    const-string v5, "is_super_primary"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    .line 1084
    const-string v1, "_id"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1085
    const/4 v1, 0x1

    move v12, v1

    move-wide v13, v2

    move-wide v1, v13

    move v3, v12

    .line 1094
    :goto_4
    if-nez v3, :cond_3

    .line 1095
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1096
    const-string v1, "_id"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1099
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1104
    :goto_5
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 1107
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1108
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1109
    const-string v4, "key_number"

    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1110
    const-string v4, "speed_dial_data_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1111
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1114
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1116
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1117
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 1120
    if-nez v2, :cond_6

    .line 1121
    const-string v1, "SpeedDialActivity"

    const-string v2, "Contact uri is null, contact does not exist."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1088
    :catch_0
    move-exception v1

    .line 1089
    const/4 v1, 0x0

    .line 1090
    goto/16 :goto_3

    .line 1100
    :cond_4
    if-eqz v4, :cond_5

    .line 1101
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5
    move-wide v1, v2

    goto :goto_5

    .line 1125
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1126
    if-eqz v4, :cond_0

    .line 1128
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1130
    const/4 v8, 0x0

    .line 1131
    if-eqz v7, :cond_7

    .line 1133
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    move-object v8, v1

    .line 1135
    :cond_7
    iget v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    move-object v3, p0

    move-object v5, v2

    move-wide v6, v10

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;JLcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;I)I

    .line 1137
    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1138
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :cond_9
    move v12, v1

    move-wide v13, v2

    move-wide v1, v13

    move v3, v12

    goto/16 :goto_4

    :cond_a
    move-wide v1, v7

    goto/16 :goto_1

    :cond_b
    move-wide v10, v7

    goto/16 :goto_2
.end method

.method private deleteSlot(Landroid/view/View;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x4

    .line 725
    if-nez p1, :cond_0

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 729
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .line 730
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 731
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 732
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 733
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mAdd:Landroid/widget/ImageView;

    const v2, 0x7f0203a2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0273

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 736
    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 739
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 741
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->invalidateOptionsMenu()V

    .line 742
    return-void
.end method

.method private getAccountType(J)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 2677
    .line 2679
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "account_type"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2683
    if-eqz v0, :cond_1

    .line 2684
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v7, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2685
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2687
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2689
    :cond_1
    return-object v4
.end method

.method private preventDoubleClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 746
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 747
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastClickedView:Landroid/view/View;

    .line 748
    return-void
.end method

.method private setDimLayout(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 631
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 632
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 633
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 634
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mAdd:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 635
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PHOTO_NUMBER_IMAGES:[I

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 636
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->dragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->layoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 639
    return-void
.end method

.method private setLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 2699
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2701
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2703
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2704
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v2}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2705
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 2706
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2720
    :cond_0
    :goto_0
    return-void

    .line 2708
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2709
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 2710
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2712
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 2714
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 2715
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 2716
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method


# virtual methods
.method public animateLayoutAtEntrance()V
    .locals 2

    .prologue
    .line 2424
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2425
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->animateTwoColumnLayoutAtEntrance()V

    .line 2429
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2430
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    .line 2431
    :cond_1
    return-void

    .line 2426
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2427
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->animateThreeColumnLayoutAtEntrance()V

    goto :goto_0
.end method

.method public animateThreeColumnLayoutAtEntrance()V
    .locals 19

    .prologue
    .line 2540
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    .line 2542
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v6

    .line 2543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v7

    .line 2545
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v8

    .line 2546
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v9

    .line 2548
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v10

    .line 2550
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v11

    .line 2551
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v12

    .line 2552
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v13

    .line 2554
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v14

    .line 2555
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v15

    .line 2556
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v16

    .line 2561
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2562
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ecccccd

    mul-float/2addr v2, v3

    sub-float v4, v1, v2

    .line 2563
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ecccccd

    mul-float/2addr v2, v3

    sub-float v3, v1, v2

    .line 2565
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, -0x40e66666

    mul-float/2addr v2, v1

    .line 2566
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v17, -0x40e66666

    mul-float v1, v1, v17

    .line 2575
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setAlpha(F)V

    .line 2576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 2577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 2579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setAlpha(F)V

    .line 2580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setX(F)V

    .line 2581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 2583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setAlpha(F)V

    .line 2584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 2585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    .line 2587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setAlpha(F)V

    .line 2588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setX(F)V

    .line 2589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    .line 2591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setAlpha(F)V

    .line 2593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setAlpha(F)V

    .line 2594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    .line 2596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setY(F)V

    .line 2599
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2600
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 2602
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2603
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setX(F)V

    .line 2605
    new-instance v1, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut80;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut80;-><init>()V

    .line 2606
    new-instance v2, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut90;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut90;-><init>()V

    .line 2609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2619
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2623
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2629
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2638
    :goto_1
    return-void

    .line 2568
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    .line 2569
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getHeight()I

    move-result v1

    int-to-float v3, v1

    .line 2571
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    int-to-float v2, v1

    .line 2572
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    goto/16 :goto_0

    .line 2635
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public animateTwoColumnLayoutAtEntrance()V
    .locals 19

    .prologue
    .line 2437
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    .line 2438
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v6

    .line 2439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v7

    .line 2440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v8

    .line 2441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v9

    .line 2442
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v10

    .line 2443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v11

    .line 2444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v12

    .line 2445
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v13

    .line 2447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v14

    .line 2448
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v15

    .line 2449
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v16

    .line 2455
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ecccccd

    mul-float/2addr v2, v3

    sub-float v4, v1, v2

    .line 2457
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ecccccd

    mul-float/2addr v2, v3

    sub-float v3, v1, v2

    .line 2459
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, -0x40e66666

    mul-float/2addr v2, v1

    .line 2460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v17, -0x40e66666

    mul-float v1, v1, v17

    .line 2469
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setAlpha(F)V

    .line 2470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 2471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 2473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setAlpha(F)V

    .line 2474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setX(F)V

    .line 2475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 2477
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2478
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 2480
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2481
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 2483
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2484
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 2486
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2487
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setX(F)V

    .line 2489
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2490
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setX(F)V

    .line 2492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setX(F)V

    .line 2495
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2496
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 2497
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setY(F)V

    .line 2499
    new-instance v1, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut80;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut80;-><init>()V

    .line 2500
    new-instance v2, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut90;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut90;-><init>()V

    .line 2503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2509
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2516
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2518
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2533
    :goto_1
    return-void

    .line 2462
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    .line 2463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getHeight()I

    move-result v1

    int-to-float v3, v1

    .line 2465
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    int-to-float v2, v1

    .line 2466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    goto/16 :goto_0

    .line 2530
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method checkViewFromDB()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/16 v9, 0x9

    const/4 v6, 0x0

    .line 1562
    new-array v8, v9, [Z

    move v0, v6

    .line 1563
    :goto_0
    if-ge v0, v9, :cond_0

    .line 1564
    aput-boolean v6, v8, v0

    .line 1563
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1566
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION2:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1569
    if-eqz v2, :cond_6

    .line 1570
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v6

    .line 1571
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1572
    const-string v1, "key_number"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1573
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1574
    if-eqz v1, :cond_1

    .line 1575
    add-int/lit8 v1, v1, -0x1

    aput-boolean v7, v8, v1

    .line 1576
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 1571
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v7

    .line 1579
    :goto_2
    if-ge v1, v9, :cond_5

    .line 1580
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1582
    aget-boolean v0, v8, v1

    if-eqz v0, :cond_4

    .line 1583
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    add-int/lit8 v4, v1, -0x1

    aget-boolean v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1579
    :cond_3
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1586
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_3

    .line 1591
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1593
    :cond_6
    return-void
.end method

.method public getSpeedDialDefaultImage(J)I
    .locals 3
    .parameter "contactId"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEEDDIAL_DEFAULT_IMAGES:[I

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEEDDIAL_DEFAULT_IMAGES:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p1, v1

    long-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public hasPersonData()Z
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->selectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    return v0
.end method

.method public initFixedSpeedDial()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 2641
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_AddPreloadedSpeedDialAs"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2642
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2673
    :cond_0
    :goto_0
    return-void

    .line 2645
    :cond_1
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    move-object v5, v6

    move v3, v1

    .line 2650
    :goto_1
    array-length v2, v4

    if-ge v0, v2, :cond_6

    .line 2651
    aget-object v2, v4, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2653
    if-nez v0, :cond_2

    .line 2654
    const-string v2, "Service"

    aget-object v7, v4, v0

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Emergency"

    aget-object v7, v4, v0

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2657
    :cond_2
    if-ne v0, v8, :cond_3

    .line 2658
    aget-object v2, v4, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2659
    if-ge v3, v8, :cond_3

    const/16 v2, 0x9

    if-gt v3, v2, :cond_0

    .line 2662
    :cond_3
    if-ne v0, v9, :cond_4

    .line 2663
    const-string v2, "Emergency"

    aget-object v5, v4, v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0d0352

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2664
    :goto_2
    if-eqz v5, :cond_0

    .line 2650
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2663
    :cond_5
    aget-object v5, v4, v9

    goto :goto_2

    .line 2669
    :cond_6
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 2672
    new-instance v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    aget-object v2, v4, v1

    const/4 v1, 0x2

    aget-object v4, v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    goto :goto_0
.end method

.method public isListEmpty()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1795
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    move v0, v7

    .line 1810
    :goto_0
    return v0

    .line 1798
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION2:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1801
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1802
    :cond_1
    if-eqz v6, :cond_2

    .line 1803
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v7

    .line 1805
    goto :goto_0

    .line 1807
    :cond_3
    if-eqz v6, :cond_4

    .line 1808
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1810
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 18
    .parameter
    .parameter
    .parameter

    .prologue
    .line 914
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_0

    if-eqz p3, :cond_0

    .line 916
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableCreateContactInSpeedDial"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 918
    const/16 v3, 0x64

    move/from16 v0, p1

    if-ne v0, v3, :cond_1

    .line 919
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->customActivityResult(ILandroid/content/Intent;)V

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    const-string v3, "index"

    const/4 v4, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    .line 926
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 929
    const-string v3, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 931
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 934
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 938
    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    .line 943
    :goto_1
    if-nez v3, :cond_7

    .line 944
    const-string v3, "phone_data_id"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 945
    const-string v5, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 947
    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v5

    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v6, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 950
    const-wide/16 v4, -0x1

    .line 952
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 953
    const/4 v3, 0x0

    .line 955
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_d

    .line 956
    :cond_2
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 958
    :try_start_0
    const-string v7, "is_super_primary"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_2

    .line 959
    const-string v3, "_id"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 960
    const/4 v3, 0x1

    move v15, v3

    move-wide/from16 v16, v4

    move-wide/from16 v3, v16

    move v5, v15

    .line 969
    :goto_3
    if-nez v5, :cond_3

    .line 970
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 971
    const-string v3, "_id"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 974
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 982
    :goto_4
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 985
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 986
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 987
    const-string v6, "key_number"

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 988
    const-string v6, "speed_dial_data_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 989
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 992
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 994
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 995
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 998
    if-nez v4, :cond_8

    .line 999
    const-string v3, "SpeedDialActivity"

    const-string v4, "Contact uri is null, contact does not exist."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 938
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 963
    :catch_0
    move-exception v3

    .line 964
    const/4 v3, 0x0

    .line 965
    goto/16 :goto_2

    .line 975
    :cond_5
    if-eqz v6, :cond_6

    .line 976
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    move-wide v3, v4

    goto/16 :goto_4

    .line 979
    :cond_7
    const-string v3, "phone_data_id"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    goto/16 :goto_4

    .line 1003
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1004
    if-eqz v13, :cond_0

    .line 1006
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1008
    const/4 v3, 0x0

    .line 1009
    if-eqz v9, :cond_9

    .line 1011
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .line 1018
    :cond_9
    const-wide/16 v11, -0x1

    .line 1020
    const-string v5, "_id"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1021
    const-wide/16 v5, -0x1

    cmp-long v5, v8, v5

    if-eqz v5, :cond_c

    .line 1022
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "contact_id="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1025
    if-eqz v7, :cond_c

    .line 1026
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1027
    const-string v5, "_id"

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1028
    :goto_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-wide v8, v5

    .line 1032
    :goto_6
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    move-object/from16 v5, p0

    move-object v6, v13

    move-object v7, v4

    move-object v10, v3

    invoke-virtual/range {v5 .. v11}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;JLcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;I)I

    .line 1034
    :cond_a
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1035
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :cond_b
    move-wide v5, v11

    goto :goto_5

    :cond_c
    move-wide v8, v11

    goto :goto_6

    :cond_d
    move v15, v3

    move-wide/from16 v16, v4

    move-wide/from16 v3, v16

    move v5, v15

    goto/16 :goto_3
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1518
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    .line 1525
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1527
    :goto_0
    return-void

    .line 1522
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    goto :goto_0

    .line 1518
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCancelButtonClicked()V
    .locals 1

    .prologue
    .line 1787
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    .line 1788
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 273
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 274
    new-instance v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->layoutHandler:Landroid/os/Handler;

    .line 279
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "mode"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    .line 280
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isFirstAnimation"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isFirstAnimation:Z

    .line 281
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->initFixedSpeedDial()V

    .line 282
    const v2, 0x7f040163

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setContentView(I)V

    .line 285
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 286
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const v3, 0x41caa3d7

    mul-float/2addr v2, v3

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleBarHeight:F

    .line 289
    const-string v2, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    .line 290
    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v8, [[I

    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    aput-object v4, v3, v6

    new-array v4, v7, [I

    aput-object v4, v3, v7

    new-array v4, v8, [I

    fill-array-data v4, :array_0

    invoke-direct {v2, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 298
    const v2, 0x7f090324

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    .line 299
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsMultiWindowSupported:Z

    .line 300
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsMultiWindowSupported:Z

    if-eqz v2, :cond_0

    .line 301
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 303
    :cond_0
    new-instance v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    .line 304
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 305
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->configureUri()V

    .line 306
    new-instance v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    .line 308
    if-eqz p1, :cond_4

    .line 309
    const-string v2, "doneButtonClickable"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDoneButtonClickable:Z

    .line 311
    const-string v2, "DISPLAY_NAME"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    .line 313
    const-string v2, "NUMBER"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    .line 314
    const-string v2, "NUMBER_TYPE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mNumberType:I

    .line 315
    const-string v2, "ACCOUNT_TYPE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAccountType:Ljava/lang/String;

    .line 316
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "vnd.sec.contact.sim"

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 317
    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mNumberType:I

    if-ne v2, v8, :cond_2

    .line 318
    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mNumberType:I

    invoke-static {v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    .line 328
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 329
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v0, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 335
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setLayout()V

    .line 337
    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    packed-switch v2, :pswitch_data_0

    .line 367
    :goto_1
    if-eqz v0, :cond_6

    .line 368
    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v2

    if-nez v2, :cond_5

    .line 369
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 379
    :goto_2
    new-instance v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 387
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "Update_SpeedDial_Data"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 388
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 389
    return-void

    .line 320
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_2
    const v2, 0x7f0d03f2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    goto :goto_0

    .line 323
    :cond_3
    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mNumberType:I

    invoke-static {v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    goto :goto_0

    .line 326
    :cond_4
    iput-boolean v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDoneButtonClickable:Z

    goto :goto_0

    .line 340
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    :pswitch_0
    const v2, 0x7f0d0253

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    .line 341
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 342
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_1

    .line 348
    :pswitch_1
    const v2, 0x7f0d027f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    .line 349
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 350
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDoneButtonClickable:Z

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setButtonClickable(Z)V

    .line 351
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 355
    :pswitch_2
    const v2, 0x7f0d0068

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    .line 356
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 357
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDoneButtonClickable:Z

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setButtonClickable(Z)V

    goto/16 :goto_1

    .line 371
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 373
    :cond_6
    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v2

    if-nez v2, :cond_7

    .line 374
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 376
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 290
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    const v4, 0x7f090172

    const v3, 0x7f090171

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1165
    if-ne p1, v5, :cond_a

    .line 1167
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04005b

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    .line 1173
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageType:Landroid/widget/TextView;

    .line 1175
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    .line 1177
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1178
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1180
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageType:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1185
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1189
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1191
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1192
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04005c

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    .line 1194
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleText:Landroid/widget/TextView;

    .line 1195
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1196
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBodyText:Landroid/widget/TextView;

    .line 1200
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1202
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBodyText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    const v1, 0x7f090173

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1205
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    const v2, 0x7f090174

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1206
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    const v3, 0x7f090175

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1207
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    const v4, 0x7f090176

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1209
    new-instance v4, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    .line 1257
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1258
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1259
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1260
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1262
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIPCallButtonDialog:Landroid/app/Dialog;

    .line 1263
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIPCallButtonDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1264
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIPCallButtonDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1266
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIPCallButtonDialog:Landroid/app/Dialog;

    .line 1422
    :goto_1
    return-object v0

    .line 1186
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1187
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1268
    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1269
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0341

    new-instance v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0350

    new-instance v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1296
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIPCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1298
    const v1, 0x7f0d03b2

    new-instance v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$8;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1310
    :cond_7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    .line 1319
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    goto :goto_1

    .line 1323
    :cond_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1324
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageBody:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0341

    new-instance v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$10;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0350

    new-instance v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$9;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$9;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1354
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1356
    const v1, 0x7f0d033d

    new-instance v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$11;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$11;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1368
    :cond_9
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    .line 1370
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 1372
    :cond_a
    if-ne p1, v2, :cond_c

    .line 1374
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1375
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    if-nez v1, :cond_b

    .line 1377
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1384
    :goto_2
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0d034f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f0d0068

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$12;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$12;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1418
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    .line 1419
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1420
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 1381
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_c
    move-object v0, v1

    .line 1422
    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f12000b

    const v2, 0x7f0903b5

    .line 1427
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isFirstAnimation:Z

    if-eqz v0, :cond_0

    .line 1428
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->animateLayoutAtEntrance()V

    .line 1429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isFirstAnimation:Z

    .line 1432
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isListEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1435
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 1459
    :goto_0
    return v0

    .line 1440
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1442
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    .line 1459
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 1445
    :pswitch_0
    const v1, 0x7f120018

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1

    .line 1449
    :pswitch_1
    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1450
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mMenuDone:Landroid/view/MenuItem;

    goto :goto_1

    .line 1453
    :pswitch_2
    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1454
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mMenuDone:Landroid/view/MenuItem;

    goto :goto_1

    .line 1442
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1648
    const-string v0, "SpeedDialActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1651
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 1652
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1653
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1654
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_2

    .line 1655
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1656
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1654
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1660
    :cond_2
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    .line 1696
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->removeAllViewsInLayout()V

    .line 1698
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    .line 1699
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    .line 1701
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    .line 1703
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1704
    return-void
.end method

.method public onDoneButtonClicked()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 1743
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v2, v1

    .line 1745
    :goto_0
    if-ge v2, v10, :cond_3

    .line 1747
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1749
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1745
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1755
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 1757
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1758
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move v0, v1

    .line 1760
    :goto_1
    if-ge v0, v10, :cond_3

    .line 1762
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    aget-wide v4, v4, v0

    .line 1764
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    aget-wide v6, v6, v0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 1766
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v0, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key_number="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v0, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1769
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 1771
    const-string v6, "speed_dial_data_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1772
    const-string v4, "key_number"

    add-int/lit8 v5, v0, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1773
    const-string v4, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1774
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1760
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1781
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    .line 1782
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 21
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_15

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoPos:I
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->access$400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)I

    move-result v3

    add-int/lit8 v4, p3, 0x1

    if-ne v3, v4, :cond_1

    .line 396
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v3, :cond_0

    .line 397
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->preventDoubleClick(Landroid/view/View;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->access$500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)Ljava/lang/String;

    move-result-object v16

    .line 399
    .local v16, predefNumber:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v13

    .line 401
    .local v13, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->startActivity(Landroid/content/Intent;)V

    .line 621
    .end local v13           #intent:Landroid/content/Intent;
    .end local v16           #predefNumber:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    if-nez p3, :cond_5

    .line 407
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v3, :cond_0

    .line 409
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->preventDoubleClick(Landroid/view/View;)V

    .line 411
    const/16 v20, 0x0

    .line 414
    .local v20, voiceMailNumber:Ljava/lang/String;
    const-string v3, "persist.radio.calldefault.simid"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 415
    .local v19, simId:I
    const-string v3, "ril.MSIMM"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 417
    .local v14, mSimMaster:Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_2

    .line 418
    const-string v3, "phone2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v20

    .line 430
    :goto_1
    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 432
    new-instance v13, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "voicemail"

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v13, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 487
    .restart local v13       #intent:Landroid/content/Intent;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 420
    .end local v13           #intent:Landroid/content/Intent;
    :cond_2
    const-string v3, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v20

    goto :goto_1

    .line 435
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_4

    .line 436
    new-instance v13, Landroid/content/Intent;

    const-string v3, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .restart local v13       #intent:Landroid/content/Intent;
    const-string v3, "CallSettingTab"

    move/from16 v0, v19

    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    const-string v3, "isVoiceMailServiceDualSim"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 439
    const-string v3, "isVoiceMailSettings"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .line 441
    .end local v13           #intent:Landroid/content/Intent;
    :cond_4
    new-instance v13, Landroid/content/Intent;

    const-string v3, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .restart local v13       #intent:Landroid/content/Intent;
    const-string v3, "simId"

    move/from16 v0, v19

    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 490
    .end local v13           #intent:Landroid/content/Intent;
    .end local v14           #mSimMaster:Ljava/lang/String;
    .end local v19           #simId:I
    .end local v20           #voiceMailNumber:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v3, v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 492
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v3, :cond_f

    .line 494
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    sget-object v5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key_number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, p3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 496
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 498
    const-string v3, "display_name"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    .line 499
    const-string v3, "number"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    .line 500
    const-string v3, "type"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 502
    .local v15, numberType:I
    const-string v3, "raw_contact_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 503
    .local v17, rawContactId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getAccountType(J)Ljava/lang/String;

    move-result-object v9

    .line 505
    .local v9, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mNumberType:I

    .line 506
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAccountType:Ljava/lang/String;

    .line 508
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v3

    if-lez v3, :cond_a

    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 509
    const/4 v3, 0x2

    if-ne v15, v3, :cond_9

    .line 510
    invoke-static {v15}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    .line 518
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIPCallButtonDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_b

    .line 521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBodyText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    :cond_7
    :goto_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->showDialog(I)V

    .line 547
    .end local v9           #accountType:Ljava/lang/String;
    .end local v15           #numberType:I
    .end local v17           #rawContactId:J
    :cond_8
    if-eqz v11, :cond_0

    .line 548
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 512
    .restart local v9       #accountType:Ljava/lang/String;
    .restart local v15       #numberType:I
    .restart local v17       #rawContactId:J
    :cond_9
    const v3, 0x7f0d03f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    goto :goto_3

    .line 515
    :cond_a
    invoke-static {v15}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    goto :goto_3

    .line 527
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_7

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 532
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageType:Landroid/widget/TextView;

    if-eqz v3, :cond_d

    .line 533
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessageType:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 538
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 539
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    .line 540
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCustomMessagePhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 550
    .end local v9           #accountType:Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v15           #numberType:I
    .end local v17           #rawContactId:J
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v10, v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 555
    .local v10, checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 557
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 563
    :goto_5
    invoke-static/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 564
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 566
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->checkRemoveButtonEnable()V

    goto/16 :goto_0

    .line 561
    :cond_11
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_5

    .line 571
    .end local v10           #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v3, :cond_0

    .line 573
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableCreateContactInSpeedDial"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 575
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialDialogListener;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialDialogListener;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->show(Landroid/app/FragmentManager;Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;I)V

    goto/16 :goto_0

    .line 578
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->preventDoubleClick(Landroid/view/View;)V

    .line 580
    new-instance v13, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_TAB"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    .restart local v13       #intent:Landroid/content/Intent;
    const-string v3, "additional"

    const-string v4, "phone"

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string v3, "from_speed_dial"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 583
    const-string v3, "has_result"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 584
    const-string v3, "index"

    move/from16 v0, p3

    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v3

    if-nez v3, :cond_14

    .line 586
    const-string v3, "actionbar_title"

    const-string v4, "Speed dial setting"

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    :cond_14
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 589
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    goto/16 :goto_0

    .line 595
    .end local v13           #intent:Landroid/content/Intent;
    :cond_15
    const v3, 0x7f090325

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 596
    .local v12, dragView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 597
    new-instance v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    invoke-direct {v3, v12}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->dragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .line 598
    if-nez p2, :cond_16

    .line 600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 602
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->selectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .line 603
    if-eqz p3, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->hasPersonData()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 604
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->selectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->dragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->setFloatingViewHolder(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->selectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setDimLayout(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V

    .line 608
    :cond_17
    if-eqz p3, :cond_19

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_19

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    move/from16 v0, p3

    if-eq v3, v0, :cond_19

    .line 609
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->changeData(I)V

    .line 610
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    .line 615
    :cond_18
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->checkedSelect:Z

    if-eqz v3, :cond_1a

    .line 616
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->checkedSelect:Z

    goto/16 :goto_0

    .line 611
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->oldPosition:I

    move/from16 v0, p3

    if-ne v3, v0, :cond_18

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->selectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->cancelChangeOrder(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V

    goto :goto_6

    .line 618
    :cond_1a
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->checkedSelect:Z

    goto/16 :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 1708
    if-nez p3, :cond_0

    move v1, v2

    .line 1725
    :goto_0
    return v1

    .line 1711
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoPos:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->access$400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)I

    move-result v1

    add-int/lit8 v3, p3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v2

    .line 1712
    goto :goto_0

    .line 1714
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    .line 1715
    .local v0, nameView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 1716
    goto :goto_0

    .line 1720
    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    .line 1721
    iput p3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    .line 1722
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 1723
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1724
    :cond_3
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->showDialog(I)V

    .line 1725
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1483
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1511
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    .line 1513
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1485
    :sswitch_0
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    .line 1491
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->finish()V

    goto :goto_0

    .line 1488
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    goto :goto_0

    .line 1496
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->onCancelButtonClicked()V

    goto :goto_0

    .line 1499
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->onDoneButtonClicked()V

    goto :goto_0

    .line 1502
    :sswitch_3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    goto :goto_0

    .line 1505
    :sswitch_4
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    goto :goto_0

    .line 1483
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0903a5 -> :sswitch_1
        0x7f0903b5 -> :sswitch_2
        0x7f0903d3 -> :sswitch_3
        0x7f0903d4 -> :sswitch_4
    .end sparse-switch

    .line 1485
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1637
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1638
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1644
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1645
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1465
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isListEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1468
    const/4 v0, 0x0

    .line 1473
    :goto_0
    return v0

    .line 1470
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-eqz v0, :cond_1

    .line 1471
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDoneButtonClickable:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setButtonClickable(Z)V

    .line 1473
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 1532
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1533
    const-string v0, "lastLongClickedName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    .line 1534
    const-string v0, "originDataIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    .line 1535
    const-string v0, "changedDataIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    .line 1536
    const-string v0, "checkedItems"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    .line 1537
    const-string v0, "changedPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    .line 1538
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1597
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1598
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->invalidateOptionsMenu()V

    .line 1600
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->checkViewFromDB()V

    .line 1602
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1607
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsSpeedDialInBg:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1608
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isListEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1609
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    .line 1611
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->checkRemoveButtonEnable()V

    .line 1614
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v0, :cond_2

    .line 1615
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1617
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastClickedView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1618
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastClickedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1620
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOrderOfValue:I

    .line 1622
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1623
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_number="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1624
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1625
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 1627
    :cond_5
    if-eqz v0, :cond_6

    .line 1628
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1631
    :cond_6
    return-void

    .line 1603
    :catch_0
    move-exception v0

    .line 1604
    new-instance v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    invoke-direct {v0, p0, v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1145
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 1146
    .local v0, texts:[Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1147
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1148
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1150
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1542
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1543
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1545
    const-string v0, "lastLongClickedName"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    :cond_0
    const-string v0, "originDataIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1548
    const-string v0, "changedDataIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1549
    const-string v0, "checkedItems"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 1550
    const-string v0, "changedPosition"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1551
    const-string v0, "doneButtonClickable"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDoneButtonClickable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1553
    const-string v0, "DISPLAY_NAME"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    const-string v0, "NUMBER"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    const-string v0, "NUMBER_TYPE"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mNumberType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1557
    const-string v0, "ACCOUNT_TYPE"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .parameter "isMaximized"
    .parameter "isMinimized"
    .parameter "isPinup"

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_0

    .line 2723
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setLayout()V

    .line 2725
    :cond_0
    return-void
.end method

.method public restartActivityInMode(I)V
    .locals 3
    .parameter

    .prologue
    .line 1732
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->finish()V

    .line 1733
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1734
    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1735
    const-string v1, "isFirstAnimation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1736
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1737
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->startActivity(Landroid/content/Intent;)V

    .line 1738
    return-void
.end method

.method protected setButtonClickable(Z)V
    .locals 2
    .parameter "clickable"

    .prologue
    .line 2693
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDoneButtonClickable:Z

    .line 2694
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 2695
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDoneButtonClickable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2697
    :cond_0
    return-void

    .line 2695
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setItemLayout(JLcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;JI)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 898
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 900
    if-eqz v1, :cond_0

    .line 902
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move-wide v3, p4

    move-object v5, p3

    move v6, p6

    .line 903
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;JLcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;I)I

    move-result v0

    .line 905
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 909
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;JLcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;I)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 752
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 753
    :cond_0
    const/4 v0, 0x0

    .line 883
    :goto_0
    return v0

    .line 757
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOrderOfValue:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 759
    const-string v0, "display_name_alt"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 765
    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 767
    const/4 v0, 0x0

    .line 770
    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 772
    if-eqz p5, :cond_4

    .line 775
    const/4 v4, 0x0

    .line 777
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p3, p4, v0}, Lcom/android/contacts/ContactsUtils;->loadContactPhotoWithRawContactId(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 784
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p6

    .line 785
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 787
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 789
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    aput-object v4, v0, p6

    .line 792
    iget-object v3, p5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    .line 793
    const-string v0, "photo_file_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 794
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 795
    :goto_3
    if-eqz v0, :cond_7

    .line 796
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 797
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getSpeedDialDefaultImage(J)I

    move-result v5

    .line 800
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 801
    sget-object v2, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 804
    new-instance v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Landroid/net/Uri;Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 855
    :goto_4
    iget-object v0, p5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 858
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 860
    iget-object v0, p5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 861
    iget-object v0, p5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 862
    iget-object v0, p5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    add-int/lit8 v2, p6, -0x1

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 867
    :goto_5
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 868
    iget-object v0, p5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 873
    :goto_6
    iget-object v0, p5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 874
    iget-object v0, p5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 875
    iget-object v0, p5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 876
    iget-object v0, p5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const v1, 0x7f0203c4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 878
    iget-object v0, p5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PHOTO_NUMBER_IMAGES:[I

    aget v1, v1, p6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 879
    iget-object v0, p5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 880
    iget-object v0, p5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 883
    :cond_4
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 763
    :cond_5
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    .line 778
    :catch_0
    move-exception v0

    .line 780
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_2

    .line 794
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 840
    :cond_7
    if-nez v4, :cond_8

    .line 842
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 844
    :try_start_1
    iget-object v1, p5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getSpeedDialDefaultImage(J)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 845
    :catch_1
    move-exception v0

    goto/16 :goto_4

    .line 851
    :cond_8
    iget-object v0, p5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 865
    :cond_9
    iget-object v0, p5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_5

    .line 870
    :cond_a
    iget-object v0, p5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6
.end method
