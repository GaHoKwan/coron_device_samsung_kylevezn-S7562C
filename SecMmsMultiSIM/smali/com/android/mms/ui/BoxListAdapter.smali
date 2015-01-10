.class public Lcom/android/mms/ui/BoxListAdapter;
.super Landroid/widget/CursorAdapter;
.source "BoxListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;,
        Lcom/android/mms/ui/BoxListAdapter$MessageData;
    }
.end annotation


# static fields
.field static final COLUMN_ADDRESS:I = 0x3

.field static final COLUMN_DATE:I = 0x7

.field static final COLUMN_DISPLAY_RECIPIENT_IDS:I = 0x11

.field static final COLUMN_GROUP_ID:I = 0xe

.field static final COLUMN_GROUP_TYPE:I = 0xf

.field static final COLUMN_HIDDEN:I = 0xd

.field static final COLUMN_ID:I = 0x1

.field static final COLUMN_LOCKED:I = 0xb

.field static final COLUMN_MMS_SUBJECT:I = 0x4

.field static final COLUMN_MMS_SUBJECT_CHARSET:I = 0x5

.field static final COLUMN_MMS_TYPE:I = 0x8

.field static final COLUMN_MSG_BOX:I = 0xa

.field static final COLUMN_MSG_TYPE:I = 0x0

.field static final COLUMN_READ:I = 0x9

.field static final COLUMN_RECIPIENT_IDS:I = 0x10

.field static final COLUMN_RESERVED:I = 0xc

.field static final COLUMN_SMS_BODY:I = 0x6

.field static final COLUMN_THREAD_ID:I = 0x2

.field private static DEBUG:Z = false

.field public static LIST_FROM_TEXT_SIZE_HUGE:F = 0.0f

.field public static LIST_FROM_TEXT_SIZE_LARGE:F = 0.0f

.field public static LIST_FROM_TEXT_SIZE_NORMAL:F = 0.0f

.field public static LIST_FROM_TEXT_SIZE_SMALL:F = 0.0f

.field public static LIST_FROM_TEXT_SIZE_TINY:F = 0.0f

.field private static LIST_HEIGHT_HUGE:I = 0x0

.field private static LIST_HEIGHT_LARGE:I = 0x0

.field private static LIST_HEIGHT_NORMAL:I = 0x0

.field private static LIST_HEIGHT_SMALL:I = 0x0

.field private static LIST_HEIGHT_TINY:I = 0x0

.field private static LIST_SUBJECT_TEXT_SIZE_HUGE:F = 0.0f

.field private static LIST_SUBJECT_TEXT_SIZE_LARGE:F = 0.0f

.field private static LIST_SUBJECT_TEXT_SIZE_NORMAL:F = 0.0f

.field private static LIST_SUBJECT_TEXT_SIZE_SMALL:F = 0.0f

.field private static LIST_SUBJECT_TEXT_SIZE_TINY:F = 0.0f

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms/BoxListAdapter"

.field private static mDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private final SecFeature_MESSAGE_USE_SYSTEM_FONT_SIZE:Z

.field private final changeLayoutFolderListAccordingToSystemFontsize:Z

.field private mAddress:Landroid/widget/TextView;

.field private mAvatar:Landroid/widget/QuickContactBadge;

.field private mBand:Landroid/widget/ImageView;

.field private mBody:Landroid/widget/TextView;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mCheckedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/BoxListAdapter$MessageData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDate:Landroid/widget/TextView;

.field private final mFactory:Landroid/view/LayoutInflater;

.field private mFontSize:I

.field private mIsSplitMode:Z

.field private mListItemLayout:Landroid/widget/RelativeLayout;

.field private mListType:I

.field private mLocation:Landroid/widget/TextView;

.field private mLocked:Landroid/widget/ImageView;

.field private mMsg:Landroid/widget/ImageView;

.field private mMsgPointer:Landroid/widget/ImageView;

.field private mOldFontSize:I

.field private mOnContentChangedListener:Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;

.field private mRecipient:Ljava/lang/String;

.field private mRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReserved:Landroid/widget/ImageView;

.field private mSelectedMsg:Lcom/android/mms/ui/BoxListAdapter$MessageData;

.field private mStatus:Landroid/widget/TextView;

.field private mUseCheckbox:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x4190

    const/high16 v2, 0x4180

    const/16 v1, 0x40

    .line 138
    sput v2, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_TINY:F

    .line 139
    const v0, 0x419547ae

    sput v0, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_SMALL:F

    .line 140
    const v0, 0x41a547ae

    sput v0, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_NORMAL:F

    .line 141
    const v0, 0x41b547ae

    sput v0, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_LARGE:F

    .line 142
    const v0, 0x41cd47ae

    sput v0, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_HUGE:F

    .line 144
    const/high16 v0, 0x4140

    sput v0, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_TINY:F

    .line 145
    const/high16 v0, 0x4160

    sput v0, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_SMALL:F

    .line 146
    sput v2, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    .line 147
    sput v3, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_LARGE:F

    .line 148
    sput v3, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_HUGE:F

    .line 150
    const/16 v0, 0x2c

    sput v0, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_TINY:I

    .line 151
    const/16 v0, 0x32

    sput v0, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_SMALL:I

    .line 152
    sput v1, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_NORMAL:I

    .line 153
    sput v1, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_LARGE:I

    .line 154
    sput v1, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_HUGE:I

    .line 158
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/BoxListAdapter;->DEBUG:Z

    .line 262
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/BoxListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ZI)V
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "useCheckbox"
    .parameter "boxType"

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 89
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mIsSplitMode:Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mSelectedMsg:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipients:Ljava/util/ArrayList;

    .line 204
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mFontSize:I

    .line 205
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mOldFontSize:I

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListAdapter;->changeLayoutFolderListAccordingToSystemFontsize:Z

    .line 634
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListAdapter;->SecFeature_MESSAGE_USE_SYSTEM_FONT_SIZE:Z

    .line 196
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 197
    iput-boolean p3, p0, Lcom/android/mms/ui/BoxListAdapter;->mUseCheckbox:Z

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    .line 199
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListAdapter;->initListItemSelectedMsg()V

    .line 200
    iput p4, p0, Lcom/android/mms/ui/BoxListAdapter;->mListType:I

    .line 201
    return-void
.end method

.method private adjustListItemLayout(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0xe

    const/4 v3, 0x0

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/BoxListAdapter;->refreshFontSize(Landroid/content/Context;)V

    .line 237
    const-string v0, "Mms/BoxListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustListItemLayout, mFontSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/BoxListAdapter;->mFontSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mFontSize:I

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    iget v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mFontSize:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    sget v1, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_HUGE:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 259
    :goto_1
    return-void

    .line 244
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v4, v5, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    .line 248
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v3, v5, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    sget v1, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_NORMAL:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private checkMsgIsReserved(Landroid/content/Context;ILjava/lang/String;)I
    .locals 10
    .parameter "context"
    .parameter "msgId"
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 595
    const/4 v8, 0x0

    .line 596
    .local v8, isReserved:I
    const/4 v7, 0x0

    .line 599
    .local v7, c:Landroid/database/Cursor;
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 602
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 606
    .local v9, mMsgUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 615
    .end local v9           #mMsgUri:Landroid/net/Uri;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 616
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 617
    const-string v0, "reserved"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 620
    :cond_1
    if-eqz v7, :cond_2

    .line 621
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 626
    :cond_2
    const-string v0, "Mms/BoxListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMsgIsReserved(), isReserved="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return v8

    .line 608
    :cond_3
    const-string v0, "mms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 611
    .restart local v9       #mMsgUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0

    .line 620
    .end local v9           #mMsgUri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 621
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static getMmsSubject(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "sub"
    .parameter "charset"

    .prologue
    .line 727
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00ee

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v0, p2, p1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private reCreateNameView(Landroid/content/Context;Landroid/view/View;)V
    .locals 7
    .parameter "context"
    .parameter "view"

    .prologue
    .line 214
    const v5, 0x7f0e0058

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 215
    .local v0, from:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 220
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 221
    .local v4, parent:Landroid/view/ViewGroup;
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 222
    .local v1, index:I
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 224
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 225
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030012

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0           #from:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 226
    .restart local v0       #from:Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 230
    iput-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private updateAvatar(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "address"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 800
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/BoxListAdapter;->addRecipients(Ljava/lang/String;)V

    .line 802
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    if-eqz v4, :cond_0

    .line 803
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 807
    :cond_0
    const/4 v2, 0x0

    .line 808
    .local v2, destCount:I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 809
    const-string v4, ";"

    invoke-static {p2, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 810
    .local v3, dests:[Ljava/lang/String;
    array-length v2, v3

    .line 814
    .end local v3           #dests:[Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 815
    sget-object v0, Lcom/android/mms/ui/BoxListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 860
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 861
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 862
    :cond_3
    return-void

    .line 822
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    const/4 v4, 0x0

    invoke-static {p2, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 825
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020247

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/BoxListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 827
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, ";"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 828
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020244

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 834
    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    if-ne v2, v7, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    if-eqz v4, :cond_2

    .line 836
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CBmessages"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 837
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 838
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02023c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 831
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_6
    sget-object v4, Lcom/android/mms/ui/BoxListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 839
    :cond_7
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Pushmessage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 840
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 841
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02024f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 843
    :cond_8
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 844
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 847
    :cond_9
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 848
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 850
    :cond_a
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 851
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 854
    :cond_b
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addRecipients(Ljava/lang/String;)V
    .locals 1
    .parameter "recipient"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipients:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    :cond_0
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 37
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 267
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BoxListAdapter;->mContext:Landroid/content/Context;

    .line 269
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 270
    .local v36, type:Ljava/lang/String;
    const/16 v5, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 271
    .local v26, mmsType:I
    const/16 v5, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_11

    const/16 v30, 0x1

    .line 272
    .local v30, read:Z
    :goto_0
    const/16 v5, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 277
    .local v27, msgBox:I
    const/16 v5, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 279
    .local v25, locked:I
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 280
    .local v29, msgId1:I
    const/16 v5, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 282
    .local v24, is_reserved:I
    const/16 v5, 0xe

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 283
    .local v21, group_id:I
    const/16 v5, 0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 288
    .local v22, group_type:I
    const/4 v12, 0x0

    .line 299
    .local v12, address:Ljava/lang/String;
    const/4 v5, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 321
    .local v34, threadId:J
    const/16 v5, 0x11

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 322
    .local v31, recipientIds:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 323
    const/16 v5, 0x10

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 325
    :cond_0
    const/4 v5, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v1, v5}, Lcom/android/mms/ui/MessageUtils;->getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mRecipient:Ljava/lang/String;

    .line 327
    sget-boolean v5, Lcom/android/mms/ui/BoxListAdapter;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "kkahn/Mms/BoxListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bindView(), type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",threadId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v34

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",address="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mRecipient="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/BoxListAdapter;->mRecipient:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_1
    const v5, 0x7f0e0057

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mCheckbox:Landroid/widget/CheckBox;

    .line 338
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mUseCheckbox:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_12

    .line 339
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mCheckbox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 342
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/mms/ui/BoxListAdapter;->checkedListContains(JLjava/lang/String;)Z

    move-result v15

    .line 343
    .local v15, checked:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v15}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 350
    .end local v15           #checked:Z
    :goto_1
    const v5, 0x7f0e004c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    .line 351
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mRecipient:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lcom/android/mms/ui/BoxListAdapter;->updateAvatar(Landroid/content/Context;Ljava/lang/String;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mUseCheckbox:Z

    if-nez v5, :cond_13

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v6, v5}, Landroid/view/View;->setClickable(Z)V

    .line 356
    const v5, 0x7f0e004e

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mMsg:Landroid/widget/ImageView;

    .line 357
    const-string v5, "sms"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 358
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mMsg:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    :cond_2
    :goto_3
    const v5, 0x7f0e0050

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mLocked:Landroid/widget/ImageView;

    .line 376
    if-eqz v25, :cond_16

    .line 377
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mLocked:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 385
    const v5, 0x7f0e004f

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mReserved:Landroid/widget/ImageView;

    .line 386
    if-eqz v24, :cond_17

    .line 387
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mReserved:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    :cond_3
    :goto_5
    const v5, 0x7f0e0058

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    .line 397
    const v5, 0x7f0e0051

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mLocation:Landroid/widget/TextView;

    .line 398
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mRecipient:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Lcom/android/mms/ui/BoxListAdapter;->updateRecipients(Landroid/content/Context;Ljava/lang/String;)V

    .line 399
    const/4 v5, 0x1

    move/from16 v0, v30

    if-ne v0, v5, :cond_7

    .line 400
    const-string v5, "sms"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    move/from16 v0, v27

    if-eq v0, v5, :cond_6

    :cond_4
    const-string v5, "mms"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    move/from16 v0, v27

    if-eq v0, v5, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mListType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    .line 404
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 405
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    const/high16 v6, 0x41b0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 410
    :cond_7
    const v5, 0x7f0e0052

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mBand:Landroid/widget/ImageView;

    .line 413
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mListType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_18

    .line 414
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mBand:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    :goto_6
    const v5, 0x7f0e0053

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mStatus:Landroid/widget/TextView;

    .line 433
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mStatus:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 434
    const/16 v18, 0x0

    .line 435
    .local v18, drawStateIcon:Z
    const/16 v33, 0x0

    .line 436
    .local v33, textId:I
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 438
    .local v28, msgId:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mListType:I

    if-nez v5, :cond_19

    .line 439
    const-string v5, "mms"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 440
    const/16 v5, 0x82

    move/from16 v0, v26

    if-ne v0, v5, :cond_8

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v28

    int-to-long v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v5

    const/16 v6, 0x81

    if-ne v5, v6, :cond_8

    .line 442
    const v33, 0x7f0a001e

    .line 492
    :cond_8
    :goto_7
    if-eqz v33, :cond_9

    .line 493
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mStatus:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 494
    const v5, 0x7f0a0184

    move/from16 v0, v33

    if-ne v0, v5, :cond_21

    .line 495
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/BoxListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020043

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 502
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mStatus:Landroid/widget/TextView;

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 503
    const/16 v18, 0x1

    .line 507
    :cond_9
    const v5, 0x7f0e0056

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mMsgPointer:Landroid/widget/ImageView;

    .line 518
    const v5, 0x7f0e0054

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    .line 519
    const/4 v5, 0x1

    move/from16 v0, v18

    if-ne v0, v5, :cond_22

    .line 520
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 542
    :cond_a
    :goto_9
    const v5, 0x7f0e0055

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    .line 543
    const-string v5, "sms"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 544
    const-string v13, ""

    .line 545
    .local v13, bodyText:Ljava/lang/String;
    const/4 v5, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 546
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 547
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    invoke-static {v13}, Lcom/android/mms/ui/MessageUtils;->formatMessage_smiley(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    .end local v13           #bodyText:Ljava/lang/String;
    :cond_b
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    const v6, 0x207000f

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 571
    const/4 v5, 0x1

    move/from16 v0, v30

    if-ne v0, v5, :cond_f

    .line 572
    const-string v5, "sms"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    move/from16 v0, v27

    if-eq v0, v5, :cond_e

    :cond_c
    const-string v5, "mms"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    move/from16 v0, v27

    if-eq v0, v5, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mListType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_f

    .line 576
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    const v6, 0x2070011

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 580
    :cond_f
    const v5, 0x7f0e004d

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    .line 581
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListAdapter;->changeFontSize(Landroid/content/Context;)V

    .line 584
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v5, :cond_10

    .line 585
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    iget-boolean v5, v5, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    .line 586
    check-cast p2, Lcom/android/mms/ui/BoxListViewActivity;

    .end local p2
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v5}, Lcom/android/mms/ui/SmsViewFrame;->notifiyBindingNotiViewer()V

    .line 591
    .end local v12           #address:Ljava/lang/String;
    .end local v18           #drawStateIcon:Z
    .end local v21           #group_id:I
    .end local v22           #group_type:I
    .end local v24           #is_reserved:I
    .end local v25           #locked:I
    .end local v26           #mmsType:I
    .end local v27           #msgBox:I
    .end local v28           #msgId:I
    .end local v29           #msgId1:I
    .end local v30           #read:Z
    .end local v31           #recipientIds:Ljava/lang/String;
    .end local v33           #textId:I
    .end local v34           #threadId:J
    .end local v36           #type:Ljava/lang/String;
    :cond_10
    :goto_b
    return-void

    .line 271
    .restart local v26       #mmsType:I
    .restart local v36       #type:Ljava/lang/String;
    .restart local p2
    :cond_11
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 346
    .restart local v12       #address:Ljava/lang/String;
    .restart local v21       #group_id:I
    .restart local v22       #group_type:I
    .restart local v24       #is_reserved:I
    .restart local v25       #locked:I
    .restart local v27       #msgBox:I
    .restart local v29       #msgId1:I
    .restart local v30       #read:Z
    .restart local v31       #recipientIds:Ljava/lang/String;
    .restart local v34       #threadId:J
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mCheckbox:Landroid/widget/CheckBox;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 588
    .end local v12           #address:Ljava/lang/String;
    .end local v21           #group_id:I
    .end local v22           #group_type:I
    .end local v24           #is_reserved:I
    .end local v25           #locked:I
    .end local v26           #mmsType:I
    .end local v27           #msgBox:I
    .end local v29           #msgId1:I
    .end local v30           #read:Z
    .end local v31           #recipientIds:Ljava/lang/String;
    .end local v34           #threadId:J
    .end local v36           #type:Ljava/lang/String;
    .end local p2
    :catch_0
    move-exception v19

    .line 589
    .local v19, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v5, "Mms/BoxListAdapter"

    const-string v6, "CursorIndexOutOfBoundsException"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 353
    .end local v19           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .restart local v12       #address:Ljava/lang/String;
    .restart local v21       #group_id:I
    .restart local v22       #group_type:I
    .restart local v24       #is_reserved:I
    .restart local v25       #locked:I
    .restart local v26       #mmsType:I
    .restart local v27       #msgBox:I
    .restart local v29       #msgId1:I
    .restart local v30       #read:Z
    .restart local v31       #recipientIds:Ljava/lang/String;
    .restart local v34       #threadId:J
    .restart local v36       #type:Ljava/lang/String;
    .restart local p2
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 360
    :cond_14
    :try_start_1
    const-string v5, "mms"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 361
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mMsg:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    const/16 v5, 0x82

    move/from16 v0, v26

    if-ne v0, v5, :cond_15

    .line 364
    const-string v5, "Mms/BoxListAdapter"

    const-string v6, "[SSUK] MESSAGE_TYPE_NOTIFICATION_IND"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mMsg:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mMsg:Landroid/widget/ImageView;

    const v6, 0x7f020264

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 369
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mMsg:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mMsg:Landroid/widget/ImageView;

    const v6, 0x7f02022c

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 380
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mLocked:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 390
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mReserved:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 427
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mBand:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 446
    .restart local v18       #drawStateIcon:Z
    .restart local v28       #msgId:I
    .restart local v33       #textId:I
    :cond_19
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mListType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 447
    const-string v5, "sms"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 449
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v21

    move/from16 v3, v27

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/BoxListAdapter;->isFailedSms(IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 451
    const v33, 0x7f0a0184

    goto/16 :goto_7

    .line 454
    :cond_1a
    const v33, 0x7f0a0183

    goto/16 :goto_7

    .line 457
    :cond_1b
    const-string v5, "mms"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 458
    const/16 v20, 0x0

    .line 460
    .local v20, err_type:I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "msg_id="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p2

    invoke-static/range {v5 .. v11}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    .line 463
    .local v14, c:Landroid/database/Cursor;
    if-eqz v14, :cond_1c

    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1c

    .line 464
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 465
    const-string v5, "err_type"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v20

    .line 468
    :cond_1c
    if-eqz v14, :cond_1d

    .line 469
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 473
    :cond_1d
    const/16 v5, 0xa

    move/from16 v0, v20

    if-lt v0, v5, :cond_1f

    .line 474
    const v33, 0x7f0a0184

    goto/16 :goto_7

    .line 468
    :catchall_0
    move-exception v5

    if-eqz v14, :cond_1e

    .line 469
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_1e
    throw v5

    .line 477
    :cond_1f
    const/16 v23, 0x1

    .line 484
    .local v23, isAvail:Z
    const/4 v5, 0x1

    move/from16 v0, v23

    if-ne v0, v5, :cond_20

    .line 485
    const v33, 0x7f0a0183

    goto/16 :goto_7

    .line 487
    :cond_20
    const v33, 0x7f0a0312

    goto/16 :goto_7

    .line 499
    .end local v14           #c:Landroid/database/Cursor;
    .end local v20           #err_type:I
    .end local v23           #isAvail:Z
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/BoxListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020045

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_8

    .line 523
    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 524
    const/4 v5, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 525
    .local v16, date:J
    const-string v5, "sms"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 526
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 528
    :cond_23
    const-string v5, "mms"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 529
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 533
    :cond_24
    const-string v5, "wpm"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 534
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 551
    .end local v16           #date:J
    .restart local v13       #bodyText:Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    const v6, 0x7f0a00ee

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_a

    .line 555
    .end local v13           #bodyText:Ljava/lang/String;
    :cond_26
    const-string v5, "mms"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 556
    const/4 v5, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, Lcom/android/mms/ui/BoxListAdapter;->getMmsSubject(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    .line 557
    .local v32, subject:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    invoke-static/range {v32 .. v32}, Lcom/android/mms/ui/MessageUtils;->formatMessage_smiley(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 561
    .end local v32           #subject:Ljava/lang/String;
    :cond_27
    const-string v5, "wpm"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 562
    const/4 v5, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 563
    .restart local v13       #bodyText:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 564
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    invoke-static {v13}, Lcom/android/mms/ui/MessageUtils;->formatMessage_smiley(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_a
.end method

.method public changeFontSize(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x5

    const/4 v8, -0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 637
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 639
    .local v2, mDensityScale:F
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 640
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 643
    .local v1, fromLP:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, -0xa

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 644
    const/4 v0, 0x3

    .line 649
    .local v0, fontSize:I
    if-ne v0, v7, :cond_0

    .line 650
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0xa

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 651
    sget v4, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_TINY:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 654
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_TINY:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 655
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mLocation:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_TINY:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 656
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_TINY:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 657
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_TINY:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 660
    const/4 v4, -0x2

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 722
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 724
    return-void

    .line 661
    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 662
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x9

    invoke-virtual {v4, v6, v5, v6, v9}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 663
    sget v4, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_SMALL:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 665
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_SMALL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 666
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mLocation:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_SMALL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 667
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_SMALL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 668
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_SMALL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 671
    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 674
    :cond_1
    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    .line 675
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0xb

    invoke-virtual {v4, v6, v5, v6, v10}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 676
    sget v4, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_LARGE:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 679
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_LARGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 680
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mLocation:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_LARGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 681
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_LARGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 682
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_LARGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 685
    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 686
    :cond_2
    if-ne v0, v9, :cond_3

    .line 687
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x9

    invoke-virtual {v4, v6, v5, v6, v10}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 688
    sget v4, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_HUGE:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 691
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_HUGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 692
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mLocation:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_HUGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 693
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_HUGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 694
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_HUGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 697
    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_0

    .line 703
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListAdapter;->adjustListItemLayout(Landroid/content/Context;)V

    .line 707
    sget v4, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_NORMAL:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 710
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 712
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mLocation:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 713
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 714
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 715
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mStatus:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 719
    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_0
.end method

.method public checkedListAdd(JLjava/lang/String;)Z
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 1022
    new-instance v0, Lcom/android/mms/ui/BoxListAdapter$MessageData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter$MessageData;-><init>(Lcom/android/mms/ui/BoxListAdapter;JLjava/lang/String;)V

    .line 1023
    .local v0, data:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public checkedListContains(JLjava/lang/String;)Z
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 1016
    new-instance v0, Lcom/android/mms/ui/BoxListAdapter$MessageData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter$MessageData;-><init>(Lcom/android/mms/ui/BoxListAdapter;JLjava/lang/String;)V

    .line 1017
    .local v0, data:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public checkedListRemove(JLjava/lang/String;)Z
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 1028
    new-instance v0, Lcom/android/mms/ui/BoxListAdapter$MessageData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter$MessageData;-><init>(Lcom/android/mms/ui/BoxListAdapter;JLjava/lang/String;)V

    .line 1029
    .local v0, data:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public clearCheckedList()V
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 942
    return-void
.end method

.method public getBoxId(IIII)I
    .locals 1
    .parameter "msgId"
    .parameter "group_id"
    .parameter "msgBox"
    .parameter "group_type"

    .prologue
    .line 1103
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/BoxListAdapter;->isGroupSms(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    .end local p4
    :goto_0
    return p4

    .restart local p4
    :cond_0
    move p4, p3

    goto :goto_0
.end method

.method public getCheckedCount()I
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedList()[Lcom/android/mms/ui/BoxListAdapter$MessageData;
    .locals 2

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/mms/ui/BoxListAdapter$MessageData;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/ui/BoxListAdapter$MessageData;

    check-cast v0, [Lcom/android/mms/ui/BoxListAdapter$MessageData;

    return-object v0
.end method

.method public getRecipientName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 875
    const/4 v1, 0x0

    .line 877
    .local v1, name:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 878
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 879
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 882
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    return-object v1
.end method

.method public getRecipientString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "numberString"

    .prologue
    .line 889
    const/16 v5, 0x3b

    const/16 v6, 0x2c

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 890
    .local v0, contactString:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 892
    .local v3, recipient:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 893
    .local v1, i:I
    array-length v5, v3

    new-array v2, v5, [Ljava/lang/String;

    .line 894
    .local v2, nameString:[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 895
    aget-object v5, v3, v1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 894
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 897
    :cond_0
    const-string v5, ","

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 899
    .local v4, resultString:Ljava/lang/String;
    return-object v4
.end method

.method public getRecipients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipients:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSplitMode()Z
    .locals 1

    .prologue
    .line 1072
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mIsSplitMode:Z

    return v0
.end method

.method public initListItemSelectedMsg()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1006
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mSelectedMsg:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    if-nez v0, :cond_0

    .line 1007
    new-instance v0, Lcom/android/mms/ui/BoxListAdapter$MessageData;

    const-string v1, ""

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/android/mms/ui/BoxListAdapter$MessageData;-><init>(Lcom/android/mms/ui/BoxListAdapter;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mSelectedMsg:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    .line 1012
    :goto_0
    return-void

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mSelectedMsg:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    const-string v1, ""

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->setData(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public initRecipientlistForCache()V
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipients:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1080
    :cond_0
    return-void
.end method

.method public isCheckedMsgId(JLjava/lang/String;)Z
    .locals 1
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 960
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter;->checkedListContains(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFailedSms(IIII)Z
    .locals 3
    .parameter "msgId"
    .parameter "group_id"
    .parameter "msgBox"
    .parameter "group_type"

    .prologue
    .line 1098
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/BoxListAdapter;->getBoxId(IIII)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1100
    .local v0, isFailedSms:Z
    :goto_0
    return v0

    .line 1098
    .end local v0           #isFailedSms:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupSms(II)Z
    .locals 1
    .parameter "msgId"
    .parameter "group_id"

    .prologue
    .line 1109
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 870
    const-string v0, "Mms/BoxListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;

    invoke-interface {v0}, Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;->onContentChanged()V

    .line 872
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 735
    return-void
.end method

.method public refreshCheckedList()V
    .locals 7

    .prologue
    .line 1034
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1036
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 1063
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_5

    .line 1041
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1043
    .local v5, newCheckedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/BoxListAdapter$MessageData;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1048
    :cond_2
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1049
    .local v2, msgId:J
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1051
    .local v4, msgType:Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/mms/ui/BoxListAdapter;->checkedListContains(JLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1052
    new-instance v1, Lcom/android/mms/ui/BoxListAdapter$MessageData;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/mms/ui/BoxListAdapter$MessageData;-><init>(Lcom/android/mms/ui/BoxListAdapter;JLjava/lang/String;)V

    .line 1053
    .local v1, data:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    .end local v1           #data:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1058
    .end local v2           #msgId:J
    .end local v4           #msgType:Ljava/lang/String;
    :cond_4
    iput-object v5, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    goto :goto_0

    .line 1061
    .end local v5           #newCheckedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/BoxListAdapter$MessageData;>;"
    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public refreshFontSize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 208
    invoke-static {p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mFontSize:I

    .line 209
    return-void
.end method

.method public resetView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 749
    iput-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    .line 750
    iput-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    .line 751
    return-void
.end method

.method public setChecked(JLjava/lang/String;)V
    .locals 1
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 919
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter;->checkedListContains(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    :goto_0
    return-void

    .line 922
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter;->checkedListAdd(JLjava/lang/String;)Z

    goto :goto_0
.end method

.method public setDeleteMode(Z)V
    .locals 1
    .parameter "isDeleteMode"

    .prologue
    .line 903
    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListAdapter;->mUseCheckbox:Z

    .line 905
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mUseCheckbox:Z

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 907
    :cond_0
    return-void
.end method

.method public setListItemSelected(JLjava/lang/String;)V
    .locals 1
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mSelectedMsg:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    if-nez v0, :cond_0

    .line 998
    new-instance v0, Lcom/android/mms/ui/BoxListAdapter$MessageData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter$MessageData;-><init>(Lcom/android/mms/ui/BoxListAdapter;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mSelectedMsg:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    .line 1003
    :goto_0
    return-void

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mSelectedMsg:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->setData(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public setListType(I)V
    .locals 0
    .parameter "listType"

    .prologue
    .line 1067
    iput p1, p0, Lcom/android/mms/ui/BoxListAdapter;->mListType:I

    .line 1068
    return-void
.end method

.method public setMessagePointer(ZZ)V
    .locals 2
    .parameter "focus"
    .parameter "touch"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mMsgPointer:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 993
    :goto_0
    return-void

    .line 979
    :cond_0
    if-eqz p2, :cond_1

    .line 980
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mMsgPointer:Landroid/widget/ImageView;

    const v1, 0x7f02025a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 987
    :goto_1
    if-eqz p1, :cond_2

    .line 988
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mMsgPointer:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mMsgPointer:Landroid/widget/ImageView;

    const v1, 0x7f020259

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 991
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mMsgPointer:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMoveMode(Z)V
    .locals 1
    .parameter "isMoveMode"

    .prologue
    .line 911
    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListAdapter;->mUseCheckbox:Z

    .line 913
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mUseCheckbox:Z

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 915
    :cond_0
    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 865
    iput-object p1, p0, Lcom/android/mms/ui/BoxListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;

    .line 866
    return-void
.end method

.method public setSplitMode(Z)V
    .locals 0
    .parameter "isSplitMode"

    .prologue
    .line 970
    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListAdapter;->mIsSplitMode:Z

    .line 971
    return-void
.end method

.method public toggleCheckBox(JLjava/lang/String;)Z
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 945
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter;->checkedListContains(JLjava/lang/String;)Z

    move-result v0

    .line 947
    .local v0, checked:Z
    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter;->checkedListRemove(JLjava/lang/String;)Z

    .line 952
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 950
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter;->checkedListAdd(JLjava/lang/String;)Z

    goto :goto_0

    .line 952
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateRecipients(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 757
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 758
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mLocation:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipient:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 761
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipient:Ljava/lang/String;

    const-string v2, "CBmessages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 762
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    const v2, 0x7f0a0132

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 793
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    const v2, 0x207000e

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 795
    :cond_1
    return-void

    .line 764
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipient:Ljava/lang/String;

    const-string v2, "Pushmessage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 765
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    const v2, 0x7f0a01bb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 768
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipient:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListAdapter;->getRecipientString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 770
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 775
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipient:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 791
    .end local v0           #name:Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
