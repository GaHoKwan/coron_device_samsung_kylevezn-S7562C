.class public Lcom/android/mms/ui/ComposeMenu;
.super Ljava/lang/Object;
.source "ComposeMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ComposeMenu$SendNowListener;,
        Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;
    }
.end annotation


# static fields
.field public static final CONTENT_RESTRICTION:I = -0x5

.field public static final IMAGE_TOO_LARGE:I = -0x4

.field private static final MENU_ACTIONBAR_ATTACH_BUTTON:I = 0x9d

.field private static final MENU_ACTIONBAR_DELETE_CANCEL_BUTTON:I = 0x9f

.field private static final MENU_ACTIONBAR_DELETE_DONE_BUTTON:I = 0x9e

.field private static final MENU_ACTIONBAR_RESERVEMSG:I = 0xa4

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x7f

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS_MULTIPLE:I = 0x82

.field private static final MENU_ADD_NAMECARD:I = 0xa9

.field public static final MENU_ADD_RECIPIENT_MESSAGE:I = 0xb6

.field private static final MENU_ADD_SLIDE:I = 0x99

.field private static final MENU_ADD_SUBJECT:I = 0x64

.field private static final MENU_ADD_TEXT:I = 0x6d

.field private static final MENU_ATTACHMENT_LIST:I = 0x87

.field private static final MENU_ATTACH_MENU:I = 0xab

.field public static final MENU_BLOCK_NUMBER_SETTING:I = 0xa3

.field private static final MENU_CALL_RECIPIENT:I = 0x6a

.field public static final MENU_CALL_RECIPIENT_ICON:I = 0xbc

.field private static final MENU_CANCEL_MESSAGE:I = 0xa6

.field private static final MENU_CMAS_MORE:I = 0x9c

.field private static final MENU_COMBIND_AND_FORWARD_CANCEL:I = 0xc6

.field private static final MENU_COMBIND_AND_FORWARD_OK:I = 0xc5

.field private static final MENU_COMBINE_AND_FORWARD:I = 0xc4

.field public static final MENU_COMPOSE_NEW:I = 0xb8

.field private static final MENU_CONVERSATION_LIST:I = 0x6b

.field private static final MENU_COPYTOSIM_CANCEL:I = 0xc2

.field private static final MENU_COPYTOSIM_OK:I = 0xc3

.field private static final MENU_COPY_MESSAGE_TEXT:I = 0x7c

.field private static final MENU_COPY_MESSAGE_TO_SIM:I = 0x83

.field private static final MENU_COPY_TO_SDCARD:I = 0x84

.field private static final MENU_DELETE_CANCEL:I = 0xac

.field private static final MENU_DELETE_MESSAGE:I = 0x76

.field public static final MENU_DELETE_MESSAGES_ICON:I = 0xb2

.field private static final MENU_DELETE_OK:I = 0xad

.field private static final MENU_DELETE_THREAD:I = 0x66

.field public static final MENU_DELETE_THREADS:I = 0xbb

.field private static final MENU_DISCARD:I = 0x68

.field private static final MENU_DOWNLOAD_FORCELY:I = 0xb0

.field private static final MENU_EDIT_MESSAGE:I = 0x72

.field private static final MENU_EDIT_SENDER:I = 0xa2

.field private static final MENU_FORWARD_MESSAGE:I = 0x79

.field private static final MENU_INSERT_SMILEY:I = 0x7e

.field private static final MENU_LAYOUT:I = 0x98

.field private static final MENU_LOCK_MESSAGE:I = 0x80

.field private static final MENU_MOVE_CANCEL:I = 0xae

.field private static final MENU_MOVE_MSG:I = 0xa8

.field private static final MENU_MOVE_OK:I = 0xaf

.field private static final MENU_MULTIPLE_COPY_TO_SIM:I = 0xc1

.field private static final MENU_MULTI_LOCK_MESSAGE:I = 0x67

.field private static final MENU_PAGE_DURATION:I = 0x8c

.field public static final MENU_PREFERENCES:I = 0xba

.field private static final MENU_PREVIEW_SLIDESHOW:I = 0x85

.field private static final MENU_PRIORITY_LEVEL:I = 0xaa

.field private static final MENU_REMOVE_SLIDE:I = 0x9a

.field private static final MENU_REMOVE_SUBJECT:I = 0x6e

.field private static final MENU_REPLY_TO_ALL:I = 0xa1

.field private static final MENU_REPLY_TO_SENDER:I = 0xa0

.field private static final MENU_RESEND_MESSAGE:I = 0x7d

.field private static final MENU_SAVE_ADDRESS_TO_CONTACT:I = 0xa7

.field private static final MENU_SAVE_CANCEL:I = 0xbf

.field private static final MENU_SAVE_CONV:I = 0xbd

.field private static final MENU_SAVE_OK:I = 0xc0

.field private static final MENU_SAVE_RESTORE_SDCARD:I = 0xbe

.field public static final MENU_SAVE_RINGTONE:I = 0xb7

.field private static final MENU_SEARCH:I = 0x77

.field public static final MENU_SEARCH_SPLIT:I = 0xb9

.field public static final MENU_SELECT_TEXT:I = 0xb5

.field private static final MENU_SEND:I = 0x69

.field private static final MENU_SEND_NOW:I = 0xa5

.field public static final MENU_UNBLOCK_NUMBER_SETTING:I = 0xb1

.field private static final MENU_UNLOCK_MESSAGE:I = 0x81

.field private static final MENU_VIDEO_CALL_RECIPIENT:I = 0x6f

.field private static final MENU_VIEW_CONTACT:I = 0x70

.field private static final MENU_VIEW_MESSAGE_DETAILS:I = 0x75

.field public static final MESSAGE_SIZE_EXCEEDED:I = -0x2

.field private static final OFFSET:I = 0x64

.field public static final PRIORITY_HIGH:I = 0x2

.field public static final PRIORITY_LOW:I = 0x0

.field public static final PRIORITY_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/ComposerMenu"

.field public static final UNKNOWN_ERROR:I = -0x1

.field public static final UNSUPPORTED_TYPE:I = -0x3

.field private static mIsSearchMode:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field protected mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mIsDelayForSearch:Z

.field private mIsFromSearchView:Z

.field private mNumberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchView:Landroid/widget/SearchView;

.field private mSendNowAddr:Ljava/lang/String;

.field private mSendNowBody:Ljava/lang/String;

.field protected mSendNowConfirmDialog:Landroid/content/DialogInterface;

.field private mSendNowLocked:Z

.field private mSendNowSize:J

.field private mSendNowThreadId:J

.field private mSendNowType:Ljava/lang/String;

.field private mSendNowUri:Landroid/net/Uri;

.field private mSendSimSlot:I

.field private mTempMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mTempmessageOptions:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 5
    .parameter "composeMessageFragment"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object v1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowType:Ljava/lang/String;

    .line 274
    iput-object v1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowAddr:Ljava/lang/String;

    .line 275
    iput-wide v3, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J

    .line 276
    iput-object v1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowBody:Ljava/lang/String;

    .line 277
    iput-wide v3, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowSize:J

    .line 278
    iput-object v1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;

    .line 279
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowLocked:Z

    .line 280
    iput v2, p0, Lcom/android/mms/ui/ComposeMenu;->mSendSimSlot:I

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mNumberList:Ljava/util/ArrayList;

    .line 286
    iput-object v1, p0, Lcom/android/mms/ui/ComposeMenu;->mTempMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 287
    iput-object v1, p0, Lcom/android/mms/ui/ComposeMenu;->mTempmessageOptions:Lcom/android/mms/ui/MessageOptions;

    .line 302
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMenu;->mIsDelayForSearch:Z

    .line 290
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 291
    return-void
.end method

.method private AddRecipent()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 2316
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-class v7, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2317
    .local v1, addIntent:Landroid/content/Intent;
    const-string v6, "exit_on_sent"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2318
    const-string v6, "add_recipient_message"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2320
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 2321
    .local v2, contactList:Lcom/android/mms/data/ContactList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2323
    .local v0, NumberArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v5, v10, [Ljava/lang/String;

    .line 2325
    .local v5, numList:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2326
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v5

    .line 2329
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v5

    if-ge v3, v6, :cond_1

    .line 2330
    aget-object v6, v5, v3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2329
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2332
    :cond_1
    new-instance v4, Lcom/android/mms/ui/MessageOptions;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 2333
    .local v4, messageOptions:Lcom/android/mms/ui/MessageOptions;
    invoke-virtual {v4, v0, v10}, Lcom/android/mms/ui/MessageOptions;->openNewComposer(Ljava/util/ArrayList;Z)V

    .line 2334
    return-void
.end method

.method private InsertOrPickContactAddress(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter "msgItem"

    .prologue
    .line 650
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a042b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a042c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 653
    .local v1, dialog_contact:[Ljava/lang/String;
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 654
    .local v3, s:Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLocationModel()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v2

    .line 656
    .local v2, location:Lcom/samsung/mms/model/LocationVcardModel;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 657
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a042d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 658
    new-instance v4, Lcom/android/mms/ui/ComposeMenu$1;

    invoke-direct {v4, p0, v2}, Lcom/android/mms/ui/ComposeMenu$1;-><init>(Lcom/android/mms/ui/ComposeMenu;Lcom/samsung/mms/model/LocationVcardModel;)V

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 663
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 664
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ComposeMenu;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/ComposeMenu;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/ComposeMenu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowBody:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ComposeMenu;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowSize:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/ComposeMenu;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowSize:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ComposeMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowLocked:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/ComposeMenu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowLocked:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ComposeMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendSimSlot:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/ComposeMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendSimSlot:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/ComposeMenu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMenu;->mIsDelayForSearch:Z

    return p1
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    sput-boolean p0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/MessageOptions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mTempmessageOptions:Lcom/android/mms/ui/MessageOptions;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageOptions;)Lcom/android/mms/ui/MessageOptions;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mTempmessageOptions:Lcom/android/mms/ui/MessageOptions;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mTempMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mTempMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ComposeMenu;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mNumberList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMenu;->InsertOrPickContactAddress(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ComposeMenu;ILcom/samsung/mms/model/LocationVcardModel;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMenu;->createSaveLocationToContactIntent(ILcom/samsung/mms/model/LocationVcardModel;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ComposeMenu;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/ComposeMenu;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/ComposeMenu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/ComposeMenu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowAddr:Ljava/lang/String;

    return-object p1
.end method

.method private final addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V
    .locals 14
    .parameter "menu"
    .parameter "l"
    .parameter "msgItem"

    .prologue
    .line 716
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 717
    .local v7, textToSpannify:Ljava/lang/StringBuilder;
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 718
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    :cond_0
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 723
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v11, :cond_1

    .line 725
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v11}, Lcom/android/mms/model/SlideshowModel;->getLocationModel()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v10

    .line 726
    .local v10, v:Lcom/samsung/mms/model/LocationVcardModel;
    if-eqz v10, :cond_1

    .line 729
    invoke-virtual {v10}, Lcom/samsung/mms/model/LocationVcardModel;->getContactNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .end local v10           #v:Lcom/samsung/mms/model/LocationVcardModel;
    :cond_1
    new-instance v4, Landroid/text/SpannableString;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 735
    .local v4, msg:Landroid/text/SpannableString;
    const/16 v11, 0xf

    invoke-static {v4, v11}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/text/SpannableString;I)V

    .line 736
    const/4 v11, 0x0

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v12

    const-class v13, Landroid/text/style/URLSpan;

    invoke-virtual {v4, v11, v12, v13}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/URLSpan;

    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v9

    .line 739
    .local v9, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 740
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 742
    .local v8, uriString:Ljava/lang/String;
    :goto_1
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 743
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 746
    :cond_3
    const/16 v11, 0x3a

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 747
    .local v6, sep:I
    const/4 v5, 0x0

    .line 748
    .local v5, prefix:Ljava/lang/String;
    if-ltz v6, :cond_4

    .line 749
    const/4 v11, 0x0

    invoke-virtual {v8, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 750
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 752
    :cond_4
    const/4 v2, 0x0

    .line 753
    .local v2, addToContacts:Z
    const-string v11, "mailto"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 754
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->haveEmailContact(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    const/4 v2, 0x1

    .line 758
    :cond_5
    :goto_2
    if-eqz v2, :cond_2

    .line 759
    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 760
    .local v3, intent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-string v12, "com.android.contacts"

    invoke-static {v11, v12}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-string v12, "com.android.jcontacts"

    invoke-static {v11, v12}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 762
    :cond_6
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0a0008

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "%s"

    invoke-virtual {v11, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, addContactString:Ljava/lang/String;
    const/4 v11, 0x0

    const/16 v12, 0x7f

    const/4 v13, 0x0

    invoke-interface {p1, v11, v12, v13, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0

    .line 754
    .end local v1           #addContactString:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 755
    :cond_8
    const-string v11, "tel"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 756
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->isNumberInContacts(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    const/4 v2, 0x1

    :goto_3
    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 769
    .end local v2           #addToContacts:Z
    .end local v5           #prefix:Ljava/lang/String;
    .end local v6           #sep:I
    .end local v8           #uriString:Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "msgListItem"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 779
    invoke-direct {p0, p3}, Lcom/android/mms/ui/ComposeMenu;->getSelectedUriFromMessageList(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v9

    .line 781
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_0

    .line 782
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 783
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.SELECTED_ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v4, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v7, v1

    move-object v8, v5

    invoke-interface/range {v0 .. v8}, Landroid/view/ContextMenu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 787
    .end local v6           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private buildAddAddressToContactMenuItem(Landroid/view/Menu;)V
    .locals 10
    .parameter "menu"

    .prologue
    const v9, 0x7f0a0068

    const v8, 0x7f0200af

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1681
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 1682
    .local v1, contactList:Lcom/android/mms/data/ContactList;
    const/4 v4, 0x0

    .line 1683
    .local v4, worthSavingContact:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1684
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1685
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1688
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_1
    if-ne v4, v7, :cond_4

    .line 1689
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1690
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1691
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1692
    .local v3, intent:Landroid/content/Intent;
    const/16 v5, 0x7f

    invoke-interface {p1, v6, v5, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1703
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    :goto_1
    return-void

    .line 1699
    :cond_4
    if-le v4, v7, :cond_3

    .line 1700
    const/16 v5, 0x82

    invoke-interface {p1, v6, v5, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private createSaveLocationToContactIntent(ILcom/samsung/mms/model/LocationVcardModel;)Landroid/content/Intent;
    .locals 8
    .parameter "menu"
    .parameter "location"

    .prologue
    const/4 v7, 0x1

    .line 667
    const/4 v1, 0x0

    .line 670
    .local v1, intent:Landroid/content/Intent;
    if-nez p1, :cond_2

    .line 671
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.INSERT"

    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 676
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 677
    invoke-virtual {p2}, Lcom/samsung/mms/model/LocationVcardModel;->getFullName()Ljava/lang/String;

    move-result-object v2

    .line 678
    .local v2, locationFullName:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v5, "Address"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 679
    const-string v5, "name"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    :cond_1
    const-string v5, "postal_isprimary"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 682
    const-string v5, "postal_type"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    const-string v5, "postal"

    invoke-virtual {p2}, Lcom/samsung/mms/model/LocationVcardModel;->getFormattedAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    invoke-virtual {p2}, Lcom/samsung/mms/model/LocationVcardModel;->getPhoneList()Ljava/util/List;

    move-result-object v3

    .line 686
    .local v3, phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 688
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vcard/VCardEntry$PhoneData;

    .line 690
    .local v4, phonedata:Lcom/android/vcard/VCardEntry$PhoneData;
    invoke-virtual {v4}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 702
    const-string v5, "phone_type"

    const/4 v6, 0x7

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 704
    :goto_2
    const-string v5, "phone"

    invoke-virtual {v4}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 672
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #locationFullName:Ljava/lang/String;
    .end local v3           #phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    .end local v4           #phonedata:Lcom/android/vcard/VCardEntry$PhoneData;
    :cond_2
    if-ne p1, v7, :cond_0

    .line 673
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 693
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #locationFullName:Ljava/lang/String;
    .restart local v3       #phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    .restart local v4       #phonedata:Lcom/android/vcard/VCardEntry$PhoneData;
    :pswitch_0
    const-string v5, "phone_type"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 696
    :pswitch_1
    const-string v5, "phone_type"

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 699
    :pswitch_2
    const-string v5, "phone_type"

    const/4 v6, 0x3

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 708
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #locationFullName:Ljava/lang/String;
    .end local v3           #phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    .end local v4           #phonedata:Lcom/android/vcard/VCardEntry$PhoneData;
    :cond_3
    return-object v1

    .line 690
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDrmMimeMenuStringRsrc(J)I
    .locals 1
    .parameter "msgId"

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->isDrmRingtoneWithRights(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2377
    const v0, 0x7f0a04d0

    .line 2379
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSelectedUriFromMessageList(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;
    .locals 11
    .parameter "msgListItem"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 793
    move-object v2, p1

    .line 794
    .local v2, msglistItem:Lcom/android/mms/ui/MessageListItem;
    if-nez v2, :cond_1

    .line 846
    :cond_0
    :goto_0
    return-object v8

    .line 804
    :cond_1
    const/4 v5, 0x0

    .line 805
    .local v5, text:Ljava/lang/CharSequence;
    const/4 v4, -0x1

    .line 806
    .local v4, selStart:I
    const/4 v3, -0x1

    .line 809
    .local v3, selEnd:I
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v9

    iget v9, v9, Lcom/android/mms/ui/MessageItem;->mLayoutType:I

    if-ne v9, v10, :cond_4

    .line 811
    const v9, 0x7f0e0161

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 816
    .local v6, textView:Landroid/widget/TextView;
    :goto_1
    if-eqz v6, :cond_2

    .line 817
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 818
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 819
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 822
    :cond_2
    const/4 v9, -0x1

    if-ne v4, v9, :cond_3

    .line 824
    const v9, 0x7f0e0063

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #textView:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 825
    .restart local v6       #textView:Landroid/widget/TextView;
    if-eqz v6, :cond_3

    .line 826
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 827
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 828
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 834
    :cond_3
    if-eq v4, v3, :cond_0

    .line 835
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 836
    .local v1, min:I
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 838
    .local v0, max:I
    check-cast v5, Landroid/text/Spanned;

    .end local v5           #text:Ljava/lang/CharSequence;
    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {v5, v1, v0, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/URLSpan;

    .line 840
    .local v7, urls:[Landroid/text/style/URLSpan;
    array-length v9, v7

    if-ne v9, v10, :cond_0

    .line 841
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_0

    .line 813
    .end local v0           #max:I
    .end local v1           #min:I
    .end local v6           #textView:Landroid/widget/TextView;
    .end local v7           #urls:[Landroid/text/style/URLSpan;
    .restart local v5       #text:Ljava/lang/CharSequence;
    :cond_4
    const v9, 0x7f0e016d

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .restart local v6       #textView:Landroid/widget/TextView;
    goto :goto_1
.end method

.method private isAvaliableSelectTextMenu(Lcom/android/mms/ui/MessageItem;)Z
    .locals 2
    .parameter "msgItem"

    .prologue
    const/4 v0, 0x0

    .line 1107
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return v0

    .line 1111
    :cond_1
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1115
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "msgListItem"

    .prologue
    .line 773
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMenu;->addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V

    .line 774
    return-void
.end method

.method public closeSearchView(Z)V
    .locals 3
    .parameter "invalidate"

    .prologue
    .line 2364
    const-string v0, "Mms/ComposerMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSearchView invalidate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMenu;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2367
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    .line 2368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSearchView:Landroid/widget/SearchView;

    .line 2370
    if-eqz p1, :cond_0

    .line 2371
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2373
    :cond_0
    return-void
.end method

.method public confirmRegisterAsSpamNumber()V
    .locals 3

    .prologue
    .line 2383
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2384
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a039a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2385
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2386
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2387
    const v1, 0x7f0a03a7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2388
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/ComposeMenu$9;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMenu$9;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2399
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2401
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2402
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2403
    return-void
.end method

.method public isSearchMode()Z
    .locals 3

    .prologue
    .line 2359
    const-string v0, "Mms/ComposerMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSearchMode() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    sget-boolean v0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 31
    .parameter "item"

    .prologue
    .line 1706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 1707
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2244
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1710
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isMultiLockMode()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isCopyToSimMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1711
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    .line 1713
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isMultiLockMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setMultiLockModeLayout(ZZ)V

    .line 1715
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isCopyToSimMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setCopyToSimModeLayout(ZZ)V

    .line 1737
    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1717
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isMoveMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setMoveModeLayout(ZZ)V

    goto :goto_1

    .line 1720
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectionMode:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 1721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, -0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelectionModeLayout(IZ)V

    goto :goto_1

    .line 1724
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mIsHardKeyboardOpen:Z

    if-eqz v2, :cond_7

    .line 1725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSipWithHardKeypad()V

    .line 1729
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v26

    .line 1731
    .local v26, splitMode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_8

    .line 1733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    goto :goto_1

    .line 1727
    .end local v26           #splitMode:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    goto :goto_2

    .line 1735
    .restart local v26       #splitMode:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_1

    .line 1740
    .end local v26           #splitMode:I
    :sswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->hasLocationAttachment()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1742
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {v12, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1743
    .local v12, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x1010355

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1744
    const v2, 0x7f0a041f

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1745
    const v2, 0x7f0a0436

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1746
    const v2, 0x7f0a011e

    new-instance v3, Lcom/android/mms/ui/ComposeMenu$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/mms/ui/ComposeMenu$2;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    invoke-virtual {v12, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1755
    const v2, 0x7f0a011f

    new-instance v3, Lcom/android/mms/ui/ComposeMenu$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/mms/ui/ComposeMenu$3;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    invoke-virtual {v12, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1760
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1767
    .end local v12           #builder:Landroid/app/AlertDialog$Builder;
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1762
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    const/16 v6, 0xd

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V

    goto :goto_3

    .line 1765
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    const/16 v6, 0xd

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V

    goto :goto_3

    .line 1771
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCancel()Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCancel()Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1777
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    .line 1780
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isMultiLockMode()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setMultiLockModeLayout(ZZ)V

    .line 1784
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isMoveMode()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setMoveModeLayout(ZZ)V

    .line 1791
    :cond_e
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1793
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getDeleteMessage()Lcom/android/mms/ui/ComposeDeleteMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeDeleteMessage;->deleteSelectedMessages()V

    .line 1797
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isMultiLockMode()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMultiLockMessage()Lcom/android/mms/ui/ComposeMultiLockMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMultiLockMessage;->updateMultiLockMessage()V

    .line 1802
    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isMoveMode()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->createMoveThreadDialog(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v16

    .line 1805
    .local v16, dlg:Landroid/app/AlertDialog;
    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->show()V

    .line 1809
    .end local v16           #dlg:Landroid/app/AlertDialog;
    :cond_11
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1813
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuMoveCancel()Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuMoveCancel()Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1819
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isMoveMode()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setMoveModeLayout(ZZ)V

    .line 1823
    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1825
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isMoveMode()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->createMoveThreadDialog(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v16

    .line 1827
    .restart local v16       #dlg:Landroid/app/AlertDialog;
    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->show()V

    .line 1829
    .end local v16           #dlg:Landroid/app/AlertDialog;
    :cond_14
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1834
    :sswitch_6
    const-string v2, "Mms/ComposerMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MENU_COPYTOSIM_CANCEL : getMenuCancel() = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCancel()Landroid/view/MenuItem;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCancel()Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 1837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCancel()Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1839
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isAnimationEnable()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgBubbleListAnimation()Lcom/android/mms/animation/MsgBubbleListAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgBubbleListAnimation;->hidecheckbox()V

    .line 1846
    :cond_16
    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1842
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isCopyToSimMode()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setCopyToSimModeLayout(ZZ)V

    goto :goto_4

    .line 1848
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isCopyToSimMode()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMultiCopyToSimMessage()Lcom/android/mms/ui/ComposeMultiCopyToSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->copySelectedMessages()V

    .line 1851
    :cond_18
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1855
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuMoveCancel()Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 1856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuMoveCancel()Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1861
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isSaveMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setSaveModeLayout(ZZ)V

    .line 1865
    :cond_1a
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1869
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCombineFwdCancel()Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 1870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCombineFwdCancel()Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1875
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectionMode:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 1876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, -0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelectionModeLayout(IZ)V

    .line 1879
    :cond_1c
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1881
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectionMode:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 1885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->combineAndForwardMessage(Landroid/content/Context;)V

    .line 1887
    :cond_1d
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1890
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->previewSlideshow()V

    .line 1891
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1894
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    .line 1895
    .local v13, config:Landroid/content/res/Configuration;
    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget v2, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 1896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v2}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 1898
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    .line 1899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getSubjectEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v29

    .line 1902
    .local v29, workingMesasge:Lcom/android/mms/data/WorkingMessage;
    if-eqz v29, :cond_1f

    .line 1903
    const-string v2, ""

    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1904
    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 1905
    sget-boolean v2, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v2, :cond_1f

    .line 1906
    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 1911
    :cond_1f
    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v2, :cond_20

    .line 1915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v2}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 1917
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getTextOnRichContainer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    .line 1919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/ComposeMenu$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/mms/ui/ComposeMenu$4;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1931
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1935
    .end local v13           #config:Landroid/content/res/Configuration;
    .end local v29           #workingMesasge:Lcom/android/mms/data/WorkingMessage;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v20

    .line 1936
    .local v20, index:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    .line 1937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 1940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getTextOnRichContainer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    .line 1942
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getReplyAllIndividualMsgBttn()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 1944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getReplyAllIndividualMsgBttn()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1946
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getReplyAllGroupMsgBttn()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 1947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getReplyAllGroupMsgBttn()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1949
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getReplyAllInfoButton()Landroid/widget/ImageButton;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 1950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getReplyAllInfoButton()Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1955
    :cond_23
    if-lez v20, :cond_24

    .line 1956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    .line 1959
    :cond_24
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1962
    .end local v20           #index:I
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->addnamecard()V

    .line 1963
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1967
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/data/Contact;

    .line 1968
    .local v11, blockContact:Lcom/android/mms/data/Contact;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1969
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v11}, Lcom/android/mms/ui/MessageUtils;->createblockNumberSettingDialog(Landroid/content/Context;Lcom/android/mms/data/Contact;)V

    .line 1973
    :goto_5
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1971
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMenu;->confirmRegisterAsSpamNumber()V

    goto :goto_5

    .line 1976
    .end local v11           #blockContact:Lcom/android/mms/data/Contact;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/mms/data/Contact;

    .line 1977
    .local v28, unblockContact:Lcom/android/mms/data/Contact;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {v28 .. v28}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->unregisterSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0a039d

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1979
    :cond_26
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1981
    .end local v28           #unblockContact:Lcom/android/mms/data/Contact;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 1982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 1984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    .line 1985
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1987
    :sswitch_12
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_EnableUSM"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v2

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_28

    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v2

    if-nez v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1988
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->showUsmWarningDialog(Landroid/app/Activity;)V

    .line 1989
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1991
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded(I)V

    .line 1994
    :cond_2a
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1996
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->onSearchRequested()Z

    .line 1997
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2000
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2c

    .line 2004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->removeAnimationForSingleMsg()V

    .line 2006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 2007
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2008
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    .line 2010
    .local v27, threadId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getBackgroundQueryHandler()Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    move-result-object v2

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v3, 0x2538

    invoke-static {v2, v6, v7, v3}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    .line 2020
    .end local v27           #threadId:Ljava/lang/Long;
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2014
    :cond_2c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mIsMoveMode:Z

    .line 2018
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    goto :goto_6

    .line 2022
    :sswitch_15
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2023
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setSaveModeLayout(ZZ)V

    .line 2025
    :cond_2e
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2028
    :sswitch_16
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2029
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedConvList()Ljava/util/ArrayList;

    move-result-object v25

    .line 2030
    .local v25, selectedIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [J

    move-object/from16 v19, v0

    .line 2032
    .local v19, ids:[J
    const/16 v18, 0x0

    .local v18, i:I
    :goto_7
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_2f

    .line 2033
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v19, v18

    .line 2032
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 2035
    :cond_2f
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->clear()V

    .line 2036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getSaveRestoreOperation()Lcom/samsung/mms/util/SaveRestoreOperation;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Lcom/samsung/mms/util/SaveRestoreOperation;->startSaveOperation([JZ)V

    .line 2038
    .end local v18           #i:I
    .end local v19           #ids:[J
    .end local v25           #selectedIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_30
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2040
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->startQueryMultiLockedMessages()V

    .line 2041
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setMultiLockModeLayout(ZZ)V

    .line 2042
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2044
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    new-instance v3, Lcom/android/mms/ui/ComposeMenu$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/mms/ui/ComposeMenu$5;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    .line 2049
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2052
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v2}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 2053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->dialRecipient()V

    .line 2054
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2057
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v2}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 2058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->videoCallRecipient()V

    .line 2059
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2061
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showSmileyDialog()V

    .line 2062
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2065
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v23

    .line 2066
    .local v23, list:Lcom/android/mms/data/ContactList;
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_32

    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2067
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v15

    .line 2068
    .local v15, contactUri:Landroid/net/Uri;
    new-instance v21, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2069
    .local v21, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactReplacePackageAs()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.jcontacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2070
    const-string v2, "com.android.jcontacts"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2072
    :cond_31
    const/high16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/app/Fragment;Landroid/content/Intent;)Z

    .line 2075
    .end local v15           #contactUri:Landroid/net/Uri;
    .end local v21           #intent:Landroid/content/Intent;
    :cond_32
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2080
    .end local v23           #list:Lcom/android/mms/data/ContactList;
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddtextDialog()V

    .line 2081
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2084
    :sswitch_1e
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 2085
    .local v14, contackIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2, v14}, Lcom/android/mms/ui/ComposeMessageFragment;->setContactIntent(Landroid/content/Intent;)V

    .line 2086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v3, 0x1d

    invoke-virtual {v2, v14, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 2088
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2092
    .end local v14           #contackIntent:Landroid/content/Intent;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showChooseContactDialog()V

    .line 2093
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2096
    :sswitch_20
    const/4 v5, 0x0

    .line 2097
    .local v5, second:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 2098
    const/4 v9, 0x0

    .line 2099
    .local v9, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a02ec

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getTotalPageCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2103
    new-instance v4, Lcom/android/mms/ui/ComposeMenu$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$6;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    .line 2112
    .local v4, numberSetListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getDuration()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 2118
    const/4 v2, 0x0

    div-int/lit16 v3, v5, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2120
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v2

    if-ge v5, v2, :cond_33

    .line 2121
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v5

    .line 2124
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v30, v0

    new-instance v2, Lcom/android/mms/ui/MessagePickerDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v6

    const/16 v7, 0x3e7

    const/4 v8, -0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    move-object/from16 v0, v30

    iput-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    .line 2126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/ComposeMenu$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/mms/ui/ComposeMenu$7;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2138
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2114
    :catch_0
    move-exception v17

    .line 2115
    .local v17, e:Ljava/lang/NullPointerException;
    const-string v2, "Mms/ComposerMenu"

    const-string v3, "NullPointerException !!!"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2116
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2142
    .end local v4           #numberSetListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;
    .end local v5           #second:I
    .end local v9           #title:Ljava/lang/String;
    .end local v17           #e:Ljava/lang/NullPointerException;
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showLayoutSelectorDialog()V

    .line 2143
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2146
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    add-int/lit8 v24, v2, 0x1

    .line 2147
    .local v24, location:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/mms/data/WorkingMessage;->addSlide(I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 2150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v0, v24

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 2153
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    if-eqz v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 2155
    sget-boolean v2, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v2, :cond_35

    .line 2156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2160
    :cond_35
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->refreshSignatureInEditor(Ljava/lang/String;)V

    .line 2163
    :cond_36
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2168
    .end local v24           #location:I
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 2169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v24

    .line 2170
    .restart local v24       #location:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/mms/data/WorkingMessage;->removeSlide(I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MmsRichContainer;->removePage(I)V

    .line 2172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getTextOnRichContainer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    .line 2173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/16 v6, 0x23

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 2174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 2177
    .end local v24           #location:I
    :cond_37
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2182
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->copytoSIM()V

    .line 2183
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2188
    :sswitch_25
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showSenderEditor()V

    .line 2190
    :cond_38
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2193
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->startMessageReservedSettingActivity(Z)V

    .line 2194
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2198
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mIsMoveMode:Z

    .line 2199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setMoveModeLayout(ZZ)V

    .line 2200
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2207
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelectionModeLayout(IZ)V

    .line 2208
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2213
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showPriorityLevel()V

    .line 2214
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2219
    :sswitch_2a
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMenu;->AddRecipent()V

    .line 2220
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2224
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->composeNewMessage(Landroid/app/Activity;)V

    .line 2225
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2228
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->startSearchMenu(Landroid/app/Activity;)V

    .line 2229
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2232
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->deleteThreads(Landroid/app/Activity;)V

    .line 2233
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2236
    :sswitch_2e
    new-instance v22, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/MessagingPreferenceActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2237
    .local v22, intentForSetting:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 2238
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1707
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_c
        0x66 -> :sswitch_14
        0x67 -> :sswitch_17
        0x68 -> :sswitch_11
        0x69 -> :sswitch_12
        0x6a -> :sswitch_19
        0x6b -> :sswitch_18
        0x6d -> :sswitch_1d
        0x6e -> :sswitch_d
        0x6f -> :sswitch_1a
        0x70 -> :sswitch_1c
        0x77 -> :sswitch_13
        0x7e -> :sswitch_1b
        0x7f -> :sswitch_1e
        0x82 -> :sswitch_1f
        0x85 -> :sswitch_b
        0x8c -> :sswitch_20
        0x98 -> :sswitch_21
        0x99 -> :sswitch_22
        0x9a -> :sswitch_23
        0xa2 -> :sswitch_25
        0xa3 -> :sswitch_f
        0xa4 -> :sswitch_26
        0xa8 -> :sswitch_27
        0xa9 -> :sswitch_e
        0xaa -> :sswitch_29
        0xab -> :sswitch_1
        0xac -> :sswitch_2
        0xad -> :sswitch_3
        0xae -> :sswitch_4
        0xaf -> :sswitch_5
        0xb1 -> :sswitch_10
        0xb2 -> :sswitch_14
        0xb6 -> :sswitch_2a
        0xb8 -> :sswitch_2b
        0xb9 -> :sswitch_2c
        0xba -> :sswitch_2e
        0xbb -> :sswitch_2d
        0xbc -> :sswitch_19
        0xbe -> :sswitch_15
        0xbf -> :sswitch_8
        0xc0 -> :sswitch_16
        0xc1 -> :sswitch_24
        0xc2 -> :sswitch_6
        0xc3 -> :sswitch_7
        0xc4 -> :sswitch_28
        0xc5 -> :sswitch_a
        0xc6 -> :sswitch_9
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 14
    .parameter "menu"

    .prologue
    .line 1120
    const-string v9, "Mms/ComposerMenu"

    const-string v10, "onPrepareOptionsMenu()"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1125
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isMultiLockMode()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1126
    :cond_0
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v10, 0x0

    const/16 v11, 0xac

    const/4 v12, 0x0

    const v13, 0x7f0a01e9

    invoke-interface {p1, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->setMenuCancel(Landroid/view/MenuItem;)V

    .line 1127
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCancel()Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1129
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1130
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v10, 0x0

    const/16 v11, 0xad

    const/4 v12, 0x0

    const v13, 0x7f0a00a2

    invoke-interface {p1, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->setMenuDone(Landroid/view/MenuItem;)V

    .line 1134
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuDone()Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1136
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsLandscape()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1137
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCancel()Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020285

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1138
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuDone()Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020286

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1141
    :cond_2
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isMultiLockMode()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1142
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v9

    if-lez v9, :cond_5

    .line 1143
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuDone()Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1674
    :cond_3
    :goto_1
    return-void

    .line 1131
    :cond_4
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isMultiLockMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1132
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v10, 0x0

    const/16 v11, 0xad

    const/4 v12, 0x0

    const v13, 0x7f0a010f

    invoke-interface {p1, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->setMenuDone(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 1145
    :cond_5
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuDone()Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1147
    :cond_6
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuDone()Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1153
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isSaveMode()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1154
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v10, 0x0

    const/16 v11, 0xbf

    const/4 v12, 0x0

    const v13, 0x7f0a01e9

    invoke-interface {p1, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->setMenuMoveCancel(Landroid/view/MenuItem;)V

    .line 1155
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuMoveCancel()Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1157
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v10, 0x0

    const/16 v11, 0xc0

    const/4 v12, 0x0

    const v13, 0x7f0a010f

    invoke-interface {p1, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->setMenuMoveDone(Landroid/view/MenuItem;)V

    .line 1158
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuMoveDone()Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1160
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsLandscape()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1161
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuMoveCancel()Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020285

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1162
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuMoveDone()Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020286

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1165
    :cond_8
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v9

    if-lez v9, :cond_9

    .line 1166
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuMoveDone()Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1168
    :cond_9
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuMoveDone()Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1177
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isMoveMode()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1178
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v10, 0x0

    const/16 v11, 0xae

    const/4 v12, 0x0

    const v13, 0x7f0a01e9

    invoke-interface {p1, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->setMenuMoveCancel(Landroid/view/MenuItem;)V

    .line 1179
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuMoveCancel()Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1181
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v10, 0x0

    const/16 v11, 0xaf

    const/4 v12, 0x0

    const v13, 0x7f0a043f

    invoke-interface {p1, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->setMenuMoveDone(Landroid/view/MenuItem;)V

    .line 1182
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuMoveDone()Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1184
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsLandscape()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1185
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuMoveCancel()Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020285

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1186
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuMoveDone()Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020286

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1189
    :cond_b
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v9

    if-lez v9, :cond_c

    .line 1190
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuMoveDone()Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1192
    :cond_c
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuMoveDone()Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1238
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectionMode:I

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    .line 1239
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v10, 0x0

    const/16 v11, 0xc6

    const/4 v12, 0x0

    const v13, 0x7f0a01e9

    invoke-interface {p1, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->setMenuCombineFwdCancel(Landroid/view/MenuItem;)V

    .line 1240
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCombineFwdCancel()Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1242
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v10, 0x0

    const/16 v11, 0xc5

    const/4 v12, 0x0

    const v13, 0x7f0a001c

    invoke-interface {p1, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->setMenuCombineFwdDone(Landroid/view/MenuItem;)V

    .line 1243
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCombineFwdDone()Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1245
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsLandscape()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1246
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCombineFwdCancel()Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020285

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1247
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCombineFwdDone()Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020286

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1250
    :cond_e
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v9

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v9

    if-lez v9, :cond_f

    .line 1251
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCombineFwdDone()Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1253
    :cond_f
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCombineFwdDone()Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1260
    :cond_10
    const/4 v2, 0x0

    .line 1261
    .local v2, messageCount:I
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 1262
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    .line 1264
    :cond_11
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isUnknownAddressMessage()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1265
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1267
    if-lez v2, :cond_3

    .line 1268
    const/4 v9, 0x1

    if-ne v2, v9, :cond_12

    .line 1270
    const/4 v9, 0x0

    const/16 v10, 0x66

    const/4 v11, 0x0

    const v12, 0x7f0a00ba

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ba

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1271
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeleteButtonOnActionBar()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3

    .line 1272
    const/4 v9, 0x0

    const/16 v10, 0xb2

    const/4 v11, 0x0

    const v12, 0x7f0a00a2

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ba

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 1276
    :cond_12
    const/4 v9, 0x0

    const/16 v10, 0x66

    const/4 v11, 0x0

    const v12, 0x7f0a00bb

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ba

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1277
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeleteButtonOnActionBar()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_13

    .line 1278
    const/4 v9, 0x0

    const/16 v10, 0xb2

    const/4 v11, 0x0

    const v12, 0x7f0a00a2

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ba

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1282
    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiLockMenu()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1283
    const/4 v9, 0x0

    const/16 v10, 0x67

    const/4 v11, 0x0

    const v12, 0x7f0a00be

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200c9

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1285
    :cond_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1286
    const/4 v9, 0x0

    const/16 v10, 0xbe

    const/4 v11, 0x0

    const v12, 0x7f0a04ff

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200da

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1294
    :cond_15
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddSendOptionInComposer()Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSendingMenu()Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1295
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v9

    if-nez v9, :cond_17

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v9

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->hasOnlySignatureText()Z

    move-result v9

    if-nez v9, :cond_17

    .line 1296
    :cond_16
    const/4 v9, 0x0

    const/16 v10, 0x69

    const/4 v11, 0x0

    const v12, 0x7f0a003f

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200df

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1301
    :cond_17
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1302
    .local v0, conversation:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v9

    if-nez v9, :cond_18

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v9

    if-nez v9, :cond_18

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v9

    if-eqz v9, :cond_21

    .line 1303
    :cond_18
    if-lez v2, :cond_1e

    .line 1306
    const/4 v9, 0x1

    if-ne v2, v9, :cond_1a

    .line 1308
    const/4 v9, 0x0

    const/16 v10, 0x66

    const/4 v11, 0x0

    const v12, 0x7f0a00ba

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ba

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1310
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeleteButtonOnActionBar()Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_19

    .line 1311
    const/4 v9, 0x0

    const/16 v10, 0xb2

    const/4 v11, 0x0

    const v12, 0x7f0a00a2

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ba

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1314
    :cond_19
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v9, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1315
    const/4 v9, 0x0

    const/16 v10, 0xb8

    const/4 v11, 0x0

    const v12, 0x7f0a0005

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02028f

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 1318
    :cond_1a
    const/4 v9, 0x0

    const/16 v10, 0x66

    const/4 v11, 0x0

    const v12, 0x7f0a00bb

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ba

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1320
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeleteButtonOnActionBar()Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1b

    .line 1321
    const/4 v9, 0x0

    const/16 v10, 0xb2

    const/4 v11, 0x0

    const v12, 0x7f0a00a2

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ba

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1325
    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiLockMenu()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 1326
    const/4 v9, 0x0

    const/16 v10, 0x67

    const/4 v11, 0x0

    const v12, 0x7f0a00be

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200c9

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1329
    :cond_1c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 1330
    const/4 v9, 0x0

    const/16 v10, 0xbe

    const/4 v11, 0x0

    const v12, 0x7f0a04ff

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200da

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1332
    :cond_1d
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v9, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1333
    const/4 v9, 0x0

    const/16 v10, 0xb8

    const/4 v11, 0x0

    const v12, 0x7f0a0005

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02028f

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 1340
    :cond_1e
    const/4 v9, 0x0

    const/16 v10, 0x66

    const/4 v11, 0x0

    const v12, 0x7f0a00ba

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ba

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1342
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeleteButtonOnActionBar()Z

    move-result v9

    if-eqz v9, :cond_1f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1f

    .line 1343
    const/4 v9, 0x0

    const/16 v10, 0xb2

    const/4 v11, 0x0

    const v12, 0x7f0a00a2

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ba

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1346
    :cond_1f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiLockMenu()Z

    move-result v9

    if-eqz v9, :cond_20

    .line 1347
    const/4 v9, 0x0

    const/16 v10, 0x67

    const/4 v11, 0x0

    const v12, 0x7f0a00be

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200c9

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1350
    :cond_20
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1351
    const/4 v9, 0x0

    const/16 v10, 0xbe

    const/4 v11, 0x0

    const v12, 0x7f0a04ff

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200da

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1370
    :cond_21
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->isAliasAddress(Lcom/android/mms/data/ContactList;)Z

    move-result v9

    if-nez v9, :cond_22

    .line 1371
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v9

    if-eqz v9, :cond_22

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v9

    if-nez v9, :cond_22

    .line 1372
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 1373
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3b

    .line 1374
    const/4 v9, 0x0

    const/16 v10, 0x6a

    const/4 v11, 0x0

    const v12, 0x7f0a0009

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200b1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1376
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v9, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v9

    if-nez v9, :cond_22

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v9, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v9

    if-nez v9, :cond_22

    .line 1377
    const/4 v9, 0x0

    const/16 v10, 0xbc

    const/4 v11, 0x0

    const v12, 0x7f0a0009

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200b1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1396
    :cond_22
    :goto_2
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v9

    if-eqz v9, :cond_24

    .line 1397
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v9

    if-nez v9, :cond_23

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getSubjectEditText()Landroid/widget/EditText;

    move-result-object v9

    if-eqz v9, :cond_24

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getSubjectEditText()Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_24

    .line 1399
    :cond_23
    const/4 v9, 0x0

    const/16 v10, 0x7e

    const/4 v11, 0x0

    const v12, 0x7f0a00fc

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200c7

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1405
    :cond_24
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v9

    if-eqz v9, :cond_25

    .line 1406
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v9

    if-eqz v9, :cond_25

    .line 1407
    const/4 v9, 0x0

    const/16 v10, 0x6d

    const/4 v11, 0x0

    const v12, 0x7f0a0168

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ae

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1413
    :cond_25
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v9

    if-eqz v9, :cond_27

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v9

    if-nez v9, :cond_26

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v9

    if-nez v9, :cond_26

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v9

    if-eqz v9, :cond_27

    :cond_26
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_27

    .line 1417
    const/4 v9, 0x0

    const/16 v10, 0x85

    const/4 v11, 0x0

    const v12, 0x7f0a005c

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200cf

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1424
    :cond_27
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-string v10, "com.android.contacts"

    invoke-static {v9, v10}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_28

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-string v10, "com.android.jcontacts"

    invoke-static {v9, v10}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 1426
    :cond_28
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 1427
    .local v3, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_29

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/data/Contact;

    invoke-virtual {v9}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v9

    if-eqz v9, :cond_29

    .line 1428
    const/4 v9, 0x0

    const/16 v10, 0x70

    const/4 v11, 0x0

    const v12, 0x7f0a0067

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200b5

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1432
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMenu;->buildAddAddressToContactMenuItem(Landroid/view/Menu;)V

    .line 1436
    .end local v3           #recipients:Lcom/android/mms/data/ContactList;
    :cond_2a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 1437
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v9

    if-eqz v9, :cond_2b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v9

    if-eqz v9, :cond_2b

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2b

    .line 1438
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    if-eqz v9, :cond_3c

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3c

    .line 1475
    :cond_2b
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v9

    if-eqz v9, :cond_2c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSubject()Z

    move-result v9

    if-eqz v9, :cond_2c

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2c

    .line 1476
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v9

    if-nez v9, :cond_42

    .line 1477
    const/4 v9, 0x0

    const/16 v10, 0x64

    const/4 v11, 0x0

    const v12, 0x7f0a003a

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ad

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1486
    :cond_2c
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getmEnableAddContactIn1stDepthComposerOption()Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 1487
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v9

    if-eqz v9, :cond_2d

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 1488
    const/4 v9, 0x0

    const/16 v10, 0xa9

    const/4 v11, 0x0

    const v12, 0x7f0a049e

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1494
    :cond_2d
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v9

    if-eqz v9, :cond_2f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v9

    if-eqz v9, :cond_2f

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2f

    .line 1495
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v9

    if-eqz v9, :cond_2f

    .line 1496
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    if-eqz v9, :cond_2f

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v9

    if-eqz v9, :cond_2f

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v9

    if-lez v9, :cond_2f

    .line 1500
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v5

    .line 1503
    .local v5, second:I
    const/4 v9, 0x0

    div-int/lit16 v10, v5, 0x3e8

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1505
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v9

    if-ge v5, v9, :cond_2e

    .line 1506
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v5

    .line 1509
    :cond_2e
    const/4 v9, 0x1

    if-ne v5, v9, :cond_43

    .line 1510
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0a005e

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1516
    .local v7, title:Ljava/lang/String;
    :goto_5
    const/4 v9, 0x0

    const/16 v10, 0x8c

    const/4 v11, 0x0

    invoke-interface {p1, v9, v10, v11, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200bf

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1521
    .end local v5           #second:I
    .end local v7           #title:Ljava/lang/String;
    :cond_2f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v9

    if-eqz v9, :cond_45

    .line 1522
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v9

    if-eqz v9, :cond_30

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v9

    if-eqz v9, :cond_30

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    if-eqz v9, :cond_30

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v9

    if-nez v9, :cond_30

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_30

    .line 1526
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getMMSLayout()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_44

    .line 1527
    const v4, 0x7f0a0061

    .line 1531
    .local v4, resId:I
    :goto_6
    const/4 v9, 0x0

    const/16 v10, 0x98

    const/4 v11, 0x0

    invoke-interface {p1, v9, v10, v11, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200cd

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1548
    .end local v4           #resId:I
    :cond_30
    :goto_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAddRecipients()Z

    move-result v9

    if-eqz v9, :cond_31

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v9

    if-nez v9, :cond_31

    .line 1549
    const/4 v9, 0x0

    const/16 v10, 0xb6

    const/4 v11, 0x0

    const v12, 0x7f0a04bd

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ab

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1554
    :cond_31
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v9

    if-eqz v9, :cond_32

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v9

    if-nez v9, :cond_32

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v9

    if-nez v9, :cond_32

    .line 1555
    const/4 v9, 0x0

    const/16 v10, 0xa4

    const/4 v11, 0x0

    const v12, 0x7f0a03d4

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200dd

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1560
    :cond_32
    if-lez v2, :cond_33

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v9

    if-nez v9, :cond_33

    .line 1561
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1562
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_33

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_33

    .line 1563
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_48

    .line 1565
    const/4 v9, 0x0

    const/16 v10, 0x66

    const/4 v11, 0x0

    const v12, 0x7f0a00ba

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ba

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1568
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v9, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v9

    if-nez v9, :cond_33

    .line 1569
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v9, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v9

    if-nez v9, :cond_47

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v9, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v9

    if-eqz v9, :cond_47

    .line 1605
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_33
    :goto_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiCopyToSIM()Z

    move-result v9

    if-eqz v9, :cond_34

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v9

    if-nez v9, :cond_34

    if-lez v2, :cond_34

    .line 1606
    const/4 v9, 0x0

    const/16 v10, 0xc1

    const/4 v11, 0x0

    const v12, 0x7f0a0023

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200b9

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1611
    :cond_34
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v9

    if-eqz v9, :cond_35

    .line 1612
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isFocusedOnRecipientsEditor()Z

    move-result v9

    if-eqz v9, :cond_35

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v9

    if-nez v9, :cond_35

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isMms()Z

    move-result v9

    if-nez v9, :cond_35

    .line 1613
    const/4 v9, 0x0

    const/16 v10, 0xa2

    const/4 v11, 0x0

    const v12, 0x7f0a033c

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200e8

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1618
    :cond_35
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v9

    if-eqz v9, :cond_36

    .line 1620
    if-lez v2, :cond_36

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v9

    if-nez v9, :cond_36

    .line 1621
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1622
    .restart local v1       #cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_36

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_36

    .line 1623
    const/4 v9, 0x0

    const/16 v10, 0xa8

    const/4 v11, 0x0

    const v12, 0x7f0a043e

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200cb

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1631
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_36
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v9

    if-eqz v9, :cond_37

    .line 1632
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 1633
    .restart local v3       #recipients:Lcom/android/mms/data/ContactList;
    if-lez v2, :cond_37

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v9

    if-nez v9, :cond_37

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_37

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/data/Contact;

    invoke-virtual {v9}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_37

    .line 1634
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v9

    if-eqz v9, :cond_4c

    .line 1635
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/data/Contact;

    invoke-virtual {v9}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_37

    .line 1636
    const/4 v9, 0x0

    const/16 v10, 0xa3

    const/4 v11, 0x0

    const v12, 0x7f0a03a2

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200b0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1650
    .end local v3           #recipients:Lcom/android/mms/data/ContactList;
    :cond_37
    :goto_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v9

    if-eqz v9, :cond_38

    .line 1651
    const/4 v9, 0x0

    const/16 v10, 0xaa

    const/4 v11, 0x0

    const v12, 0x7f0a0304

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200d1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1654
    :cond_38
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v8

    .line 1655
    .local v8, useSplitView:Z
    if-eqz v8, :cond_39

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v9, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v9

    if-nez v9, :cond_3a

    .line 1656
    :cond_39
    const/4 v9, 0x0

    const/16 v10, 0x68

    const/4 v11, 0x0

    const v12, 0x7f0a003b

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200bb

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1668
    :cond_3a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1669
    const/4 v9, 0x0

    const/16 v10, 0xc4

    const/4 v11, 0x0

    const v12, 0x7f0a001c

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200c3

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1382
    .end local v8           #useSplitView:Z
    :cond_3b
    const/4 v9, 0x0

    const/16 v10, 0x6a

    const/4 v11, 0x0

    const v12, 0x7f0a0009

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200b1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1442
    :cond_3c
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    if-eqz v9, :cond_3d

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v10

    if-ge v9, v10, :cond_3e

    .line 1443
    :cond_3d
    const/4 v9, 0x0

    const/16 v10, 0x99

    const/4 v11, 0x0

    const v12, 0x7f0a002d

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ac

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1446
    :cond_3e
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v9

    if-eqz v9, :cond_2b

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    if-eqz v9, :cond_2b

    .line 1447
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    .line 1448
    .local v6, slideCount:I
    const/4 v9, 0x1

    if-le v6, v9, :cond_2b

    .line 1450
    const/4 v9, 0x0

    const/16 v10, 0x9a

    const/4 v11, 0x0

    const v12, 0x7f0a002c

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200d4

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 1457
    .end local v6           #slideCount:I
    :cond_3f
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v9

    if-eqz v9, :cond_2b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v9

    if-eqz v9, :cond_2b

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2b

    .line 1459
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    if-eqz v9, :cond_40

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v10

    if-ge v9, v10, :cond_41

    .line 1460
    :cond_40
    const/4 v9, 0x0

    const/16 v10, 0x99

    const/4 v11, 0x0

    const v12, 0x7f0a002d

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ac

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1463
    :cond_41
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v9

    if-eqz v9, :cond_2b

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    if-eqz v9, :cond_2b

    .line 1464
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    .line 1465
    .restart local v6       #slideCount:I
    const/4 v9, 0x1

    if-le v6, v9, :cond_2b

    .line 1467
    const/4 v9, 0x0

    const/16 v10, 0x9a

    const/4 v11, 0x0

    const v12, 0x7f0a002c

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200d4

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 1479
    .end local v6           #slideCount:I
    :cond_42
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 1480
    const/4 v9, 0x0

    const/16 v10, 0x6e

    const/4 v11, 0x0

    const v12, 0x7f0a0169

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200d5

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 1513
    .restart local v5       #second:I
    :cond_43
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0a0181

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #title:Ljava/lang/String;
    goto/16 :goto_5

    .line 1529
    .end local v5           #second:I
    .end local v7           #title:Ljava/lang/String;
    :cond_44
    const v4, 0x7f0a0062

    .restart local v4       #resId:I
    goto/16 :goto_6

    .line 1535
    .end local v4           #resId:I
    :cond_45
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v9

    if-eqz v9, :cond_30

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v9

    if-eqz v9, :cond_30

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_30

    .line 1538
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getMMSLayout()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_46

    .line 1539
    const v4, 0x7f0a0061

    .line 1543
    .restart local v4       #resId:I
    :goto_a
    const/4 v9, 0x0

    const/16 v10, 0x98

    const/4 v11, 0x0

    invoke-interface {p1, v9, v10, v11, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200cd

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1541
    .end local v4           #resId:I
    :cond_46
    const v4, 0x7f0a0062

    .restart local v4       #resId:I
    goto :goto_a

    .line 1573
    .end local v4           #resId:I
    .restart local v1       #cursor:Landroid/database/Cursor;
    :cond_47
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeleteButtonOnActionBar()Z

    move-result v9

    if-eqz v9, :cond_33

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_33

    .line 1574
    const/4 v9, 0x0

    const/16 v10, 0xb2

    const/4 v11, 0x0

    const v12, 0x7f0a00a2

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ba

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_8

    .line 1579
    :cond_48
    const/4 v9, 0x0

    const/16 v10, 0x66

    const/4 v11, 0x0

    const v12, 0x7f0a00bb

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ba

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1581
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v9, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v9

    if-nez v9, :cond_49

    .line 1583
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v9, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v9

    if-eqz v9, :cond_4b

    .line 1593
    :cond_49
    :goto_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiLockMenu()Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 1594
    const/4 v9, 0x0

    const/16 v10, 0x67

    const/4 v11, 0x0

    const v12, 0x7f0a00be

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200c9

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1597
    :cond_4a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v9

    if-eqz v9, :cond_33

    .line 1598
    const/4 v9, 0x0

    const/16 v10, 0xbe

    const/4 v11, 0x0

    const v12, 0x7f0a04ff

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200da

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_8

    .line 1587
    :cond_4b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeleteButtonOnActionBar()Z

    move-result v9

    if-eqz v9, :cond_49

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_49

    .line 1588
    const/4 v9, 0x0

    const/16 v10, 0xb2

    const/4 v11, 0x0

    const v12, 0x7f0a00a2

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ba

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_b

    .line 1638
    .end local v1           #cursor:Landroid/database/Cursor;
    .restart local v3       #recipients:Lcom/android/mms/data/ContactList;
    :cond_4c
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/data/Contact;

    invoke-virtual {v9}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_37

    .line 1639
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/data/Contact;

    invoke-virtual {v9}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/android/mms/ui/MessageUtils;->SpamNumberisAlreadInUse(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 1640
    const/4 v9, 0x0

    const/16 v10, 0xb1

    const/4 v11, 0x0

    const v12, 0x7f0a039b

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200e4

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_9

    .line 1642
    :cond_4d
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v9

    if-nez v9, :cond_37

    .line 1643
    const/4 v9, 0x0

    const/16 v10, 0xa3

    const/4 v11, 0x0

    const v12, 0x7f0a039a

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200d3

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_9
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    .line 295
    return-void
.end method

.method public showItemContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageItem;Lcom/android/mms/ui/MessageListItem;)V
    .locals 18
    .parameter "menu"
    .parameter "v"
    .parameter "messageItem"
    .parameter "msgListItem"

    .prologue
    .line 853
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v15}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListView()Lcom/android/mms/ui/MessageListView;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelectedIndex(I)V

    .line 855
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMenu;->addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V

    .line 857
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v6

    .line 858
    .local v6, ed:Landroid/widget/EditText;
    if-eqz v6, :cond_0

    .line 860
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/widget/EditText;->setSelection(II)V

    .line 863
    :cond_0
    move-object/from16 v9, p3

    .line 864
    .local v9, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_2

    .line 1102
    :cond_1
    :goto_0
    return-void

    .line 869
    :cond_2
    const v14, 0x7f0a0028

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 871
    new-instance v7, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v7, v0, v1, v2}, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V

    .line 874
    .local v7, l:Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 875
    :cond_3
    const/4 v14, 0x0

    const/16 v15, 0x76

    const/16 v16, 0x0

    const v17, 0x7f0a00ba

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 877
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v14

    if-nez v14, :cond_4

    .line 878
    const/4 v14, 0x0

    const/16 v15, 0x79

    const/16 v16, 0x0

    const v17, 0x7f0a001c

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 881
    :cond_4
    const/4 v14, 0x0

    const/16 v15, 0x7c

    const/16 v16, 0x0

    const v17, 0x7f0a0022

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 888
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 889
    const/4 v14, 0x0

    const/16 v15, 0x76

    const/16 v16, 0x0

    const v17, 0x7f0a00ba

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 892
    const/4 v14, 0x0

    const/16 v15, 0x75

    const/16 v16, 0x0

    const v17, 0x7f0a0014

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 900
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_17

    .line 901
    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isFailed()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 902
    :cond_7
    const/4 v14, 0x0

    const/16 v15, 0x7d

    const/16 v16, 0x0

    const v17, 0x7f0a00b8

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 905
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_9

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    .line 906
    const/4 v14, 0x0

    const/16 v15, 0xa0

    const/16 v16, 0x0

    const v17, 0x7f0a03c4

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 918
    :cond_9
    :goto_1
    iget-wide v14, v9, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v16, 0x1

    cmp-long v14, v14, v16

    if-nez v14, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 919
    const/4 v14, 0x0

    const/16 v15, 0xa5

    const/16 v16, 0x0

    const v17, 0x7f0a03d9

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 922
    const/4 v14, 0x0

    const/16 v15, 0xa6

    const/16 v16, 0x0

    const v17, 0x7f0a03da

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 926
    :cond_a
    iget-wide v14, v9, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v16, 0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_b

    .line 927
    const/4 v14, 0x0

    const/16 v15, 0x76

    const/16 v16, 0x0

    const v17, 0x7f0a00ba

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 935
    :cond_b
    iget-object v14, v9, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 937
    :cond_c
    const/4 v14, 0x0

    const/16 v15, 0x7c

    const/16 v16, 0x0

    const v17, 0x7f0a0022

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 941
    :cond_d
    iget-boolean v14, v9, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v14, :cond_18

    .line 942
    const/4 v14, 0x0

    const/16 v15, 0x81

    const/16 v16, 0x0

    const v17, 0x7f0a00bd

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 950
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v14

    if-nez v14, :cond_e

    iget-wide v14, v9, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v16, 0x1

    cmp-long v14, v14, v16

    if-nez v14, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 951
    :cond_e
    const/4 v14, 0x0

    const/16 v15, 0x72

    const/16 v16, 0x0

    const v17, 0x7f0a00b7

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 954
    :cond_f
    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 956
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplyAll()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 957
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/ComposeMenu;->mNumberList:Ljava/util/ArrayList;

    invoke-static {v14, v9, v15}, Lcom/android/mms/ui/MessageUtils;->getReplyAllCount(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Ljava/util/ArrayList;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 958
    const/4 v14, 0x0

    const/16 v15, 0xa1

    const/16 v16, 0x0

    const v17, 0x7f0a0268

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 964
    :cond_10
    iget-object v14, v9, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v14, :cond_19

    .line 968
    const/4 v14, 0x0

    const/16 v15, 0x87

    const/16 v16, 0x0

    const v17, 0x7f0a016a

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 989
    :cond_11
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 990
    iget v14, v9, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    const/16 v15, 0xa

    if-ne v14, v15, :cond_12

    .line 992
    const/4 v14, 0x0

    const/16 v15, 0xa7

    const/16 v16, 0x0

    const v17, 0x7f0a041b

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 997
    :cond_12
    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 998
    const/4 v14, 0x0

    const/16 v15, 0x79

    const/16 v16, 0x0

    const v17, 0x7f0a001c

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1001
    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v14

    if-eqz v14, :cond_15

    .line 1002
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v14

    invoke-static {v14}, Lcom/android/mms/ui/MessageUtils;->isAliasAddress(Lcom/android/mms/data/ContactList;)Z

    move-result v14

    if-nez v14, :cond_15

    .line 1003
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v14

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v14

    if-nez v14, :cond_15

    .line 1006
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v14}, Lcom/android/mms/ui/MessageUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 1007
    const/4 v14, 0x0

    const/16 v15, 0x6a

    const/16 v16, 0x0

    const v17, 0x7f0a0009

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1011
    :cond_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVideoCall()Z

    move-result v14

    if-eqz v14, :cond_15

    .line 1022
    :cond_15
    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 1023
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "airplane_mode_on"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1026
    .local v4, airplane:I
    const/4 v8, 0x0

    .line 1028
    .local v8, mSimAvailableNum:I
    const/4 v11, 0x0

    .local v11, simSlotNum:I
    :goto_4
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v14

    if-ge v11, v14, :cond_1a

    .line 1029
    invoke-static {v11}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-static {v11}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v14

    const/4 v15, 0x5

    if-ne v14, v15, :cond_16

    .line 1030
    add-int/lit8 v8, v8, 0x1

    .line 1028
    :cond_16
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 913
    .end local v4           #airplane:I
    .end local v8           #mSimAvailableNum:I
    .end local v11           #simSlotNum:I
    :cond_17
    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 914
    const/4 v14, 0x0

    const/16 v15, 0x7d

    const/16 v16, 0x0

    const v17, 0x7f0a00b8

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 944
    :cond_18
    const/4 v14, 0x0

    const/16 v15, 0x80

    const/16 v16, 0x0

    const v17, 0x7f0a00bc

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 971
    :cond_19
    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 973
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    sget-object v15, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v12

    .line 977
    .local v12, slideshow:Lcom/android/mms/model/SlideshowModel;
    if-eqz v12, :cond_11

    .line 978
    const/4 v14, 0x0

    const/16 v15, 0x87

    const/16 v16, 0x0

    const v17, 0x7f0a016a

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 982
    .end local v12           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v5

    .line 983
    .local v5, e:Lcom/google/android/mms/MmsException;
    const-string v14, "Mms/ComposerMenu"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 1032
    .end local v5           #e:Lcom/google/android/mms/MmsException;
    .restart local v4       #airplane:I
    .restart local v8       #mSimAvailableNum:I
    .restart local v11       #simSlotNum:I
    :cond_1a
    const-string v14, "Mms/ComposerMenu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "showItemContextMenu() mSimAvailableNum = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v14

    if-eqz v14, :cond_1c

    iget-wide v14, v9, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v16, 0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_1c

    if-lez v8, :cond_1c

    invoke-static {v9}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1b

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1c

    :cond_1b
    if-nez v4, :cond_1c

    .line 1041
    const/4 v14, 0x0

    const/16 v15, 0x83

    const/16 v16, 0x0

    const v17, 0x7f0a0023

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1044
    :cond_1c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 1045
    const/4 v14, 0x0

    const/16 v15, 0xbd

    const/16 v16, 0x0

    const v17, 0x7f0a0500

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1051
    .end local v4           #airplane:I
    .end local v8           #mSimAvailableNum:I
    .end local v11           #simSlotNum:I
    :cond_1d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveVMessage()Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 1053
    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 1054
    invoke-static {v9}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v14

    if-eqz v14, :cond_1f

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isExternalSdCardMounted()Z

    move-result v14

    if-eqz v14, :cond_1f

    iget-wide v14, v9, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_1f

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1e

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1f

    .line 1057
    :cond_1e
    const/4 v14, 0x0

    const/16 v15, 0x84

    const/16 v16, 0x0

    const v17, 0x7f0a0349

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1064
    :cond_1f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v14

    if-eqz v14, :cond_20

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v14

    if-eqz v14, :cond_20

    .line 1065
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v10

    .line 1066
    .local v10, recipients:Lcom/android/mms/data/ContactList;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v14

    if-lez v14, :cond_20

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v14

    if-nez v14, :cond_20

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_20

    .line 1067
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/mms/data/Contact;

    invoke-virtual {v14}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_20

    .line 1068
    const/4 v14, 0x0

    const/16 v15, 0xa3

    const/16 v16, 0x0

    const v17, 0x7f0a03a2

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1073
    .end local v10           #recipients:Lcom/android/mms/data/ContactList;
    :cond_20
    const/4 v14, 0x0

    const/16 v15, 0x75

    const/16 v16, 0x0

    const v17, 0x7f0a0014

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1077
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v14

    if-eqz v14, :cond_21

    .line 1078
    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v14

    if-nez v14, :cond_21

    .line 1079
    const/4 v14, 0x0

    const/16 v15, 0xb0

    const/16 v16, 0x0

    const v17, 0x7f0a001d

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1085
    :cond_21
    const-string v14, "Extended"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getLinkifyDAType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22

    .line 1087
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/mms/ui/ComposeMenu;->isAvaliableSelectTextMenu(Lcom/android/mms/ui/MessageItem;)Z

    move-result v14

    if-eqz v14, :cond_22

    .line 1088
    const/4 v14, 0x0

    const/16 v15, 0xb5

    const/16 v16, 0x0

    const v17, 0x7f0a04bc

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1093
    :cond_22
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisableSaveRingtone()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1094
    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    iget-wide v15, v9, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static/range {v14 .. v16}, Lcom/android/mms/ui/MessageUtils;->isDrmRingtoneWithRights(Landroid/content/Context;J)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1096
    iget-wide v14, v9, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/mms/ui/ComposeMenu;->getDrmMimeMenuStringRsrc(J)I

    move-result v13

    .line 1097
    .local v13, strResID:I
    if-lez v13, :cond_1

    .line 1098
    const/4 v14, 0x0

    const/16 v15, 0xb7

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v14, v15, v1, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public startSearchMenu()V
    .locals 4

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 2355
    :cond_0
    :goto_0
    return-void

    .line 2341
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMenu;->mIsDelayForSearch:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    if-nez v0, :cond_0

    .line 2344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMenu;->mIsDelayForSearch:Z

    .line 2345
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ComposeMenu$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMenu$8;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
