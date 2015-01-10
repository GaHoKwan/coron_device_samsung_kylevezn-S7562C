.class public Lcom/samsung/mms/ui/RestorePreviewActivity;
.super Landroid/app/ListActivity;
.source "RestorePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/ui/RestorePreviewActivity$ArrayData;
    }
.end annotation


# static fields
.field public static final BUBBLE_MIN_HEIGHT_DP:I = 0x2f

.field private static final MAX_TEXTS_IN_ONE_LINE:I = 0x816

.field public static final MENU_RESTORE_CANCEL:I = 0x2

.field public static final MENU_RESTORE_OK:I = 0x1

.field private static final SMS_BUBBLE_MAX_CHARS:I = 0xa0

.field private static final TAG:Ljava/lang/String; = "Mms/RestorePreviewActivity"


# instance fields
.field private array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/data/SavedSmsMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mBubbleLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field mConvAddress:Ljava/lang/String;

.field private mDateSeperatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/ui/RestorePreviewActivity$ArrayData;",
            ">;"
        }
    .end annotation
.end field

.field public mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsAlignLeft:Z

.field private mIsLandscape:Z

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuRestore:Landroid/view/MenuItem;

.field private mMsgList:Landroid/widget/ListView;

.field private mMsgListItem:Landroid/view/View;

.field private mMsgListItemLayout:Landroid/widget/LinearLayout;

.field private mMsgsAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/samsung/mms/data/SavedSmsMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 51
    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mMenuRestore:Landroid/view/MenuItem;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mIsAlignLeft:Z

    .line 59
    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mConvAddress:Ljava/lang/String;

    .line 200
    new-instance v0, Lcom/samsung/mms/ui/RestorePreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/RestorePreviewActivity$2;-><init>(Lcom/samsung/mms/ui/RestorePreviewActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 311
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/mms/ui/RestorePreviewActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/mms/ui/RestorePreviewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mDateSeperatorList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/mms/ui/RestorePreviewActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/mms/ui/RestorePreviewActivity;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/samsung/mms/ui/RestorePreviewActivity;->getId()[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/mms/ui/RestorePreviewActivity;)Lcom/samsung/mms/util/SaveRestoreOperation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    return-object v0
.end method

.method private enableDateView(Landroid/view/View;Lcom/samsung/mms/data/SavedSmsMessage;)V
    .locals 11
    .parameter "item"
    .parameter "msg"

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 236
    .local v1, invisibleView:Landroid/view/View;
    const/4 v5, 0x0

    .line 237
    .local v5, progressBar:Landroid/widget/ProgressBar;
    const/16 v6, 0x8

    .line 238
    .local v6, progressBarVisible:I
    invoke-virtual {p2}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x5

    if-eq v8, v9, :cond_0

    invoke-virtual {p2}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    invoke-virtual {p2}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 240
    .local v2, isOutgoing:Z
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_4

    const/4 v3, 0x1

    .line 242
    .local v3, isQueued:Z
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    .line 244
    const v8, 0x7f0e015e

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 245
    .local v7, visibleView:Landroid/widget/LinearLayout;
    const v8, 0x7f0e0154

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #progressBar:Landroid/widget/ProgressBar;
    check-cast v5, Landroid/widget/ProgressBar;

    .line 246
    .restart local v5       #progressBar:Landroid/widget/ProgressBar;
    const v8, 0x7f0e0150

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 253
    .local v4, lockView:Landroid/widget/ImageView;
    :goto_2
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 254
    const v8, 0x7f0e0155

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 256
    .local v0, dateView:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/samsung/mms/data/SavedSmsMessage;->getLocked()I

    move-result v8

    if-eqz v8, :cond_6

    .line 257
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    :goto_3
    invoke-virtual {p2}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_7

    .line 264
    const v8, 0x7f0a0184

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 265
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 279
    :goto_4
    if-eqz v5, :cond_1

    .line 280
    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 282
    :cond_1
    if-eqz v1, :cond_2

    .line 283
    const/16 v8, 0x8

    throw v1

    .line 284
    :cond_2
    return-void

    .line 238
    .end local v0           #dateView:Landroid/widget/TextView;
    .end local v2           #isOutgoing:Z
    .end local v3           #isQueued:Z
    .end local v4           #lockView:Landroid/widget/ImageView;
    .end local v7           #visibleView:Landroid/widget/LinearLayout;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 240
    .restart local v2       #isOutgoing:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 249
    .restart local v3       #isQueued:Z
    :cond_5
    const v8, 0x7f0e016a

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 250
    .restart local v7       #visibleView:Landroid/widget/LinearLayout;
    const/16 v8, 0x53

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 251
    const v8, 0x7f0e014f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .restart local v4       #lockView:Landroid/widget/ImageView;
    goto :goto_2

    .line 260
    .restart local v0       #dateView:Landroid/widget/TextView;
    :cond_6
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 266
    :cond_7
    if-eqz v2, :cond_9

    .line 267
    if-eqz v3, :cond_8

    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->isMsgAvailable(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 268
    const v8, 0x7f0a00c8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 269
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 270
    const/16 v6, 0x8

    goto :goto_4

    .line 272
    :cond_8
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 273
    const/4 v6, 0x0

    goto :goto_4

    .line 276
    :cond_9
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v8, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/samsung/mms/data/SavedSmsMessage;->getDate()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public static formatDate(J)J
    .locals 6
    .parameter "when"

    .prologue
    .line 303
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 304
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 305
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 306
    .local v3, year:I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 307
    .local v2, month:I
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 308
    .local v1, day:I
    mul-int/lit16 v4, v3, 0x2710

    mul-int/lit8 v5, v2, 0x64

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    int-to-long v4, v4

    return-wide v4
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "when"

    .prologue
    .line 287
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 290
    .local v3, df:Ljava/text/DateFormat;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, formatedDate:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 294
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 295
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 296
    .local v1, dayOfWeek:I
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getDayOfWeekString(I)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, dayOfWeekStr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 299
    .local v5, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getId()[J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 216
    const/4 v1, 0x1

    new-array v0, v1, [J

    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v1}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    aput-wide v1, v0, v3

    .line 217
    .local v0, threadId:[J
    return-object v0
.end method

.method private getSpecificConvArray(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "address"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/data/SavedSmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v0, convArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v2}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    :cond_1
    return-object v0
.end method

.method private updateActionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 222
    .local v0, actionbar:Landroid/app/ActionBar;
    const-string v2, "Mms/RestorePreviewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The convAddress value is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mConvAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mConvAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mConvAddress:Ljava/lang/String;

    invoke-static {v2, v5, v5}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 225
    .local v1, recipient:Lcom/android/mms/data/ContactList;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    .end local v1           #recipient:Lcom/android/mms/data/ContactList;
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 350
    :pswitch_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, file:Ljava/io/File;
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/samsung/mms/util/SaveRestoreOperation;->startRestoreOperation(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 354
    .end local v0           #file:Ljava/io/File;
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e01c7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 196
    const-string v0, "Mms/RestorePreviewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configurationChanged(),newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mIsLandscape:Z

    .line 198
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v16, 0x7f030070

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 71
    .local v11, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/mms/ui/RestorePreviewActivity;->mContext:Landroid/content/Context;

    .line 72
    new-instance v16, Lcom/samsung/mms/util/SaveRestoreOperation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/samsung/mms/util/SaveRestoreOperation;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/mms/ui/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    .line 73
    const-string v16, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/mms/ui/RestorePreviewActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/mms/ui/RestorePreviewActivity;->mMsgList:Landroid/widget/ListView;

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    .line 77
    .local v5, actionbar:Landroid/app/ActionBar;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    const-string v17, "file_path"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/mms/data/Conversation;->readXmlFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/mms/ui/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-nez v16, :cond_1

    .line 81
    :cond_0
    const v16, 0x7f0a04ef

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 137
    :goto_0
    return-void

    .line 85
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 86
    .local v6, arrayAux:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v13, v16, -0x1

    .line 87
    .local v13, j:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_2

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 89
    add-int/lit8 v13, v13, -0x1

    .line 87
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 92
    const/4 v6, 0x0

    .line 93
    const-string v16, "address"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/mms/ui/RestorePreviewActivity;->mConvAddress:Ljava/lang/String;

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mConvAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mConvAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/mms/ui/RestorePreviewActivity;->getSpecificConvArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/mms/ui/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    .line 100
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/mms/ui/RestorePreviewActivity;->updateActionBar()V

    .line 102
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/mms/ui/RestorePreviewActivity;->mDateSeperatorList:Ljava/util/ArrayList;

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mDateSeperatorList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 104
    const-wide/16 v14, 0x0

    .line 107
    .local v14, prevDay:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/mms/data/SavedSmsMessage;

    .line 108
    .local v12, item:Lcom/samsung/mms/data/SavedSmsMessage;
    invoke-virtual {v12}, Lcom/samsung/mms/data/SavedSmsMessage;->getDate()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/samsung/mms/ui/RestorePreviewActivity;->formatDate(J)J

    move-result-wide v7

    .line 109
    .local v7, currDay:J
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-eqz v16, :cond_4

    cmp-long v16, v14, v7

    if-gez v16, :cond_3

    .line 110
    :cond_4
    move-wide v14, v7

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mDateSeperatorList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Lcom/samsung/mms/ui/RestorePreviewActivity$ArrayData;

    invoke-virtual {v12}, Lcom/samsung/mms/data/SavedSmsMessage;->getId()J

    move-result-wide v18

    invoke-virtual {v12}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-wide/from16 v2, v18

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/mms/ui/RestorePreviewActivity$ArrayData;-><init>(Lcom/samsung/mms/ui/RestorePreviewActivity;JLjava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 97
    .end local v7           #currDay:J
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #item:Lcom/samsung/mms/data/SavedSmsMessage;
    .end local v14           #prevDay:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v16

    :goto_4
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/mms/ui/RestorePreviewActivity;->mConvAddress:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    const/16 v16, 0x0

    goto :goto_4

    .line 115
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v14       #prevDay:J
    :cond_7
    new-instance v16, Lcom/samsung/mms/ui/RestorePreviewActivity$1;

    const v17, 0x7f030051

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move/from16 v3, v17

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/mms/ui/RestorePreviewActivity$1;-><init>(Lcom/samsung/mms/ui/RestorePreviewActivity;Landroid/content/Context;ILjava/util/List;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/mms/ui/RestorePreviewActivity;->mMsgsAdapter:Landroid/widget/ArrayAdapter;

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mMsgsAdapter:Landroid/widget/ArrayAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mMsgList:Landroid/widget/ListView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mMsgList:Landroid/widget/ListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AdapterView;->getCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 142
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mMsgsAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mMsgsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 144
    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mMsgsAdapter:Landroid/widget/ArrayAdapter;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-virtual {v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->OnDestroy()V

    .line 149
    iput-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    .line 151
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 173
    .local v1, itemId:I
    const-string v3, "Mms/RestorePreviewActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOptionsItemSelected(),item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sparse-switch v1, :sswitch_data_0

    .line 188
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 177
    :sswitch_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "file_path"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, file:Ljava/io/File;
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v4, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/samsung/mms/util/SaveRestoreOperation;->startRestoreOperation(Ljava/util/ArrayList;)V

    .line 179
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-direct {p0}, Lcom/samsung/mms/ui/RestorePreviewActivity;->getId()[J

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/mms/util/SaveRestoreOperation;->checkForDuplicates([J)V

    goto :goto_0

    .line 183
    .end local v0           #file:Ljava/io/File;
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 175
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    const-string v0, "Mms/RestorePreviewActivity"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 157
    const/4 v0, 0x2

    const v1, 0x7f0a01e9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 158
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 160
    const v0, 0x7f0a0365

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mMenuRestore:Landroid/view/MenuItem;

    .line 161
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mMenuRestore:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 163
    iget-boolean v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f020285

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 165
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewActivity;->mMenuRestore:Landroid/view/MenuItem;

    const v1, 0x7f020286

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 168
    :cond_0
    return v3
.end method
