.class public Lcom/android/phone/RejectCallWithMsgContent;
.super Landroid/widget/LinearLayout;
.source "RejectCallWithMsgContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;,
        Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;
    }
.end annotation


# static fields
.field private static final REJECTMSG_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private FROM:[Ljava/lang/String;

.field private mBtnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCreateButton:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mNetType:I

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneType:I

.field private mRemindButton:Landroid/widget/LinearLayout;

.field private mRemindDialog:Landroid/app/AlertDialog;

.field private mSendMsgListener:Landroid/view/View$OnClickListener;

.field private mSimId:I

.field remindtimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field strList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "content://com.android.phone.callsettings/reject_msg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RejectCallWithMsgContent;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 209
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;

    .line 69
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    .line 70
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindButton:Landroid/widget/LinearLayout;

    .line 71
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindDialog:Landroid/app/AlertDialog;

    .line 72
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    .line 74
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    .line 89
    iput v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneType:I

    .line 91
    iput v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mNetType:I

    .line 93
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "reject_message"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "edit_checked"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "remind_time"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->FROM:[Ljava/lang/String;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->remindtimeList:Ljava/util/ArrayList;

    .line 107
    iput v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mSimId:I

    .line 109
    new-instance v1, Lcom/android/phone/RejectCallWithMsgContent$1;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectCallWithMsgContent$1;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;

    .line 175
    new-instance v1, Lcom/android/phone/RejectCallWithMsgContent$2;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectCallWithMsgContent$2;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mSendMsgListener:Landroid/view/View$OnClickListener;

    .line 210
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 211
    .local v0, inflater:Landroid/view/LayoutInflater;
    const-string v1, "feature_remind_me_later_support "

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const v1, 0x7f04007a

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 220
    :goto_0
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;

    .line 221
    return-void

    .line 216
    :cond_0
    const v1, 0x7f040079

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method

.method private RemindmeDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 365
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 366
    .local v2, remind_time:[I
    new-array v3, v8, [Ljava/lang/CharSequence;

    .line 367
    .local v3, remind_time_item:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_2

    .line 368
    if-ge v1, v10, :cond_0

    .line 369
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0787

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    aget v6, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 367
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    :cond_0
    if-ne v1, v10, :cond_1

    .line 373
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0788

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_1

    .line 376
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0789

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    aget v6, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_1

    .line 380
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 381
    .local v0, RemindmeD:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e077c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 382
    new-instance v4, Lcom/android/phone/RejectCallWithMsgContent$6;

    invoke-direct {v4, p0}, Lcom/android/phone/RejectCallWithMsgContent$6;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    invoke-virtual {v0, v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/phone/RejectCallWithMsgContent$5;

    invoke-direct {v6, p0}, Lcom/android/phone/RejectCallWithMsgContent$5;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 430
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindDialog:Landroid/app/AlertDialog;

    .line 431
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 432
    return-void

    .line 365
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mSendMsgListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/RejectCallWithMsgContent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mSimId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/RejectCallWithMsgContent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mSimId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/RejectCallWithMsgContent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/phone/RejectCallWithMsgContent;->RemindmeDialog()V

    return-void
.end method

.method static synthetic access$600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/phone/RejectCallWithMsgContent;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static constructReminderLabel(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "minutes"

    .prologue
    const/4 v5, 0x1

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 337
    .local v1, resources:Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 338
    .local v3, value:I
    const/4 v0, 0x0

    .line 339
    .local v0, format:Ljava/lang/String;
    const/4 v2, 0x0

    .line 341
    .local v2, retString:Ljava/lang/String;
    rem-int/lit8 v4, p1, 0x3c

    if-eqz v4, :cond_2

    .line 342
    move v3, p1

    .line 343
    if-ne v3, v5, :cond_1

    .line 344
    const v4, 0x7f0e078a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 357
    :goto_0
    if-eq v3, v5, :cond_0

    .line 358
    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 361
    :cond_0
    return-object v2

    .line 346
    :cond_1
    const v4, 0x7f0e078b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 349
    :cond_2
    div-int/lit8 v3, p1, 0x3c

    .line 350
    if-ne v3, v5, :cond_3

    .line 351
    const v4, 0x7f0e078c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 353
    :cond_3
    const v4, 0x7f0e078d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public disableSendMsgButton()V
    .locals 7

    .prologue
    .line 303
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v6, 0x6

    if-ge v3, v6, :cond_2

    .line 305
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 306
    .local v4, item:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_0

    .line 307
    const-string v6, "reject_call_with_message_send_button_enable"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 308
    const v6, 0x7f090210

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    move-object v0, v6

    check-cast v0, Landroid/widget/Button;

    move-object v1, v0

    .line 309
    .local v1, btn:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 310
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 303
    .end local v1           #btn:Landroid/widget/Button;
    .end local v4           #item:Landroid/widget/LinearLayout;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 314
    .restart local v4       #item:Landroid/widget/LinearLayout;
    :cond_1
    const v6, 0x7f09020f

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v0, v6

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    .line 315
    .local v5, textView:Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 316
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 321
    .end local v4           #item:Landroid/widget/LinearLayout;
    .end local v5           #textView:Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 322
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 325
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 226
    const v0, 0x7f090205

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    .line 227
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const v0, 0x7f09020c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindButton:Landroid/widget/LinearLayout;

    .line 229
    :cond_0
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/phone/RejectCallWithMsgContent$3;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectCallWithMsgContent$3;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    .line 258
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f090206

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f090207

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f090208

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f090209

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f09020a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f09020b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_2
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/phone/RejectCallWithMsgContent$4;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectCallWithMsgContent$4;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    :cond_3
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 280
    const-string v0, "RejectCallWithMsgContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 281
    sparse-switch p1, :sswitch_data_0

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 283
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsgContent;->updateItemList()V

    goto :goto_0

    .line 286
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 281
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method setRejectCallNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "phoneNumber"

    .prologue
    .line 328
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    .line 330
    const-string v0, "RejectCallWithMsgContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Roaming area setRejectCallNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method updateItemList()V
    .locals 3

    .prologue
    .line 296
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_0
    new-instance v1, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 300
    return-void
.end method
