.class public Lcom/samsung/mms/ui/SavedMsgsList;
.super Landroid/app/ListActivity;
.source "SavedMsgsList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/ui/SavedMsgsList$BackgroundQueryHandler;,
        Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;,
        Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;
    }
.end annotation


# static fields
.field private static final CHECK_FOR_DUPLICATES:I = 0x3

.field private static final DELETE_CONFIRMATION_DIALOG:I = 0xf

.field private static final INVALID_CHAR:[Ljava/lang/String; = null

.field private static final INVALID_NAME_OPERATION:I = 0xe

.field private static final MAX_LENGTH:I = 0x32

.field public static final MAX_PATH_LENGTH:I = 0xfa

.field public static final MENU_HOME:I = 0x10

.field public static final MENU_UP:I = 0xf

.field private static final OPEN_OPERATION:I = 0xc

.field private static final PASSWORD_DIALOG:I = 0x7

.field private static final RENAME_DIALOG:I = 0x4

.field private static final RENAME_OPERATION:I = 0xd

.field private static final RESTORE_OPERATION:I = 0xb

.field private static final SAME_NAME_DIALOG:I = 0x5

.field private static final SAVE_OK_ERROR_DIALOG:I = 0x6

.field private static final SAVE_OPERATION:I = 0xa

.field private static final SMS_TO_SAVE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "Mms/SavedMsgsList"


# instance fields
.field private ROOT_DIRECTORY:Ljava/lang/String;

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

.field private convAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private convFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private dir:Ljava/io/File;

.field private fileList:Landroid/widget/ListView;

.field private filesAdapter:Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;

.field private mButtons:Landroid/view/View;

.field private mCancelBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCurrentFilePath:Ljava/io/File;

.field private mDefaultDirName:Ljava/lang/String;

.field public mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mEditFileName:Landroid/widget/EditText;

.field private mEditNewFileName:Landroid/widget/EditText;

.field private mEmptyList:Landroid/view/View;

.field private mIds:[J

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInput:Landroid/view/View;

.field private mItemSelectedIndex:I

.field private mMenuHome:Landroid/view/MenuItem;

.field private mMenuUp:Landroid/view/MenuItem;

.field private mNoSdCard:Z

.field private mOkRenameBtn:Landroid/widget/Button;

.field private mOkSaveBtn:Landroid/widget/Button;

.field private mOperation:I

.field private mQueryHandler:Lcom/samsung/mms/ui/SavedMsgsList$BackgroundQueryHandler;

.field private mReadFileTask:Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;

.field mRenameAltDialog:Landroid/app/AlertDialog;

.field private mSaveBtn:Landroid/widget/Button;

.field private mSaveError:Z

.field private mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

.field private mSdCardReceiver:Landroid/content/BroadcastReceiver;

.field private mSubTitleImageView:Landroid/widget/ImageView;

.field private mSubTitleTextView:Landroid/widget/TextView;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 118
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\n"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/mms/ui/SavedMsgsList;->INVALID_CHAR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 96
    iput v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mItemSelectedIndex:I

    .line 103
    iput-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mMenuUp:Landroid/view/MenuItem;

    .line 104
    iput-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mMenuHome:Landroid/view/MenuItem;

    .line 107
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mNoSdCard:Z

    .line 110
    const-string v0, "/Messaging/"

    iput-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mDefaultDirName:Ljava/lang/String;

    .line 111
    const-string v0, "/storage"

    iput-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->ROOT_DIRECTORY:Ljava/lang/String;

    .line 112
    iput-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSubTitleTextView:Landroid/widget/TextView;

    .line 113
    iput-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSubTitleImageView:Landroid/widget/ImageView;

    .line 114
    iput-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mRenameAltDialog:Landroid/app/AlertDialog;

    .line 115
    iput-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mReadFileTask:Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;

    .line 125
    new-instance v0, Lcom/samsung/mms/ui/SavedMsgsList$1;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/SavedMsgsList$1;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 140
    new-instance v0, Lcom/samsung/mms/ui/SavedMsgsList$2;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/SavedMsgsList$2;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mTextWatcher:Landroid/text/TextWatcher;

    .line 160
    new-instance v0, Lcom/samsung/mms/ui/SavedMsgsList$3;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/SavedMsgsList$3;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSdCardReceiver:Landroid/content/BroadcastReceiver;

    .line 908
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/mms/ui/SavedMsgsList;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->getIds()[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/mms/ui/SavedMsgsList;)Lcom/samsung/mms/util/SaveRestoreOperation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/mms/ui/SavedMsgsList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/SavedMsgsList;->renameFile(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/mms/ui/SavedMsgsList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mItemSelectedIndex:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/mms/ui/SavedMsgsList;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/SavedMsgsList;->constructFileName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/mms/ui/SavedMsgsList;)Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->filesAdapter:Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/mms/ui/SavedMsgsList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/mms/ui/SavedMsgsList;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/SavedMsgsList;->fileAlreadyExists(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->array:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/samsung/mms/ui/SavedMsgsList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->array:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/mms/ui/SavedMsgsList;Ljava/util/ArrayList;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/samsung/mms/ui/SavedMsgsList;->isMultipleConversations(Ljava/util/ArrayList;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2102(Lcom/samsung/mms/ui/SavedMsgsList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSaveError:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/samsung/mms/ui/SavedMsgsList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->setSavePanelInvisible()V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/samsung/mms/ui/SavedMsgsList;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$2400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/samsung/mms/ui/SavedMsgsList;->INVALID_CHAR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/mms/ui/SavedMsgsList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mNoSdCard:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/mms/ui/SavedMsgsList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->refreshList()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSaveBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mOkRenameBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEditFileName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/mms/ui/SavedMsgsList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mOperation:I

    return v0
.end method

.method private checkIfEncrypted(I)V
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 788
    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mReadFileTask:Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;

    .line 792
    new-instance v0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;

    invoke-direct {v0, p0, v1}, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;Lcom/samsung/mms/ui/SavedMsgsList$1;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mReadFileTask:Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;

    .line 793
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mReadFileTask:Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 803
    return-void
.end method

.method private constructDefaultName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 441
    const-string v1, "yyyyMMddHHmmss"

    .line 442
    .local v1, format:Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 443
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private constructFileName(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fileAlreadyExists(Z)Z
    .locals 5
    .parameter "saveOperation"

    .prologue
    .line 900
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEditFileName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, file:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    return v1

    .line 900
    .end local v0           #file:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private fillConvFiles()V
    .locals 4

    .prologue
    .line 462
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 463
    .local v0, fileList:[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 464
    new-instance v2, Lcom/samsung/mms/ui/SavedMsgsList$4;

    invoke-direct {v2, p0}, Lcom/samsung/mms/ui/SavedMsgsList$4;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 470
    :cond_0
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 471
    if-eqz v0, :cond_3

    .line 472
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 473
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isHidden()Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 475
    :cond_1
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    .end local v1           #i:I
    :cond_3
    return-void
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 9
    .parameter "dir"

    .prologue
    .line 337
    const-wide/16 v5, 0x0

    .line 340
    .local v5, size:J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 341
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_0

    .line 342
    const-wide/16 v7, 0x0

    .line 353
    :goto_0
    return-wide v7

    .line 346
    :cond_0
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 347
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 348
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 346
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 350
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 351
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->getFolderSize(Ljava/io/File;)J

    move-result-wide v7

    add-long/2addr v5, v7

    goto :goto_2

    .end local v1           #file:Ljava/io/File;
    :cond_3
    move-wide v7, v5

    .line 353
    goto :goto_0
.end method

.method private getIds()[J
    .locals 4

    .prologue
    .line 490
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->array:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->array:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 491
    :cond_0
    const v2, 0x7f0a04f2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 492
    const/4 v1, 0x0

    .line 500
    :cond_1
    return-object v1

    .line 494
    :cond_2
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->array:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/samsung/mms/ui/SavedMsgsList;->isMultipleConversations(Ljava/util/ArrayList;Z)Z

    .line 495
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convAddresses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [J

    .line 497
    .local v1, threadIds:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 498
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convAddresses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getOperation()I
    .locals 1

    .prologue
    .line 896
    iget v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mOperation:I

    return v0
.end method

.method private handleListItemClick(I)V
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    .line 774
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 775
    .local v0, temp_file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/SavedMsgsList;->checkIfEncrypted(I)V

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    .line 780
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mMenuUp:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 781
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mMenuHome:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 782
    invoke-direct {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->refreshList()V

    goto :goto_0
.end method

.method private isMultipleConversations(Ljava/util/ArrayList;Z)Z
    .locals 5
    .parameter
    .parameter "retrieveAddresses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/data/SavedSmsMessage;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 608
    .local p1, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    const/4 v2, 0x0

    .line 609
    .local v2, multipleConv:Z
    const-string v0, ""

    .line 610
    .local v0, address:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 611
    iget-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 613
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 614
    if-nez v1, :cond_2

    .line 615
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v3}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 616
    if-eqz p2, :cond_1

    .line 617
    iget-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 621
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v3}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 622
    const/4 v2, 0x1

    .line 624
    :cond_3
    if-eqz v2, :cond_5

    if-nez p2, :cond_5

    .line 630
    :cond_4
    return v2

    .line 627
    :cond_5
    iget-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convAddresses:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v3}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private refreshList()V
    .locals 3

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->fillConvFiles()V

    .line 483
    new-instance v0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->filesAdapter:Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;

    .line 484
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->filesAdapter:Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 485
    invoke-direct {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->updateEmptyView()V

    .line 486
    invoke-direct {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->updateSubHeaderView()V

    .line 487
    return-void
.end method

.method private renameFile(Z)V
    .locals 5
    .parameter "recreateConvFiles"

    .prologue
    .line 447
    new-instance v1, Ljava/io/File;

    iget v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mItemSelectedIndex:I

    invoke-direct {p0, v2}, Lcom/samsung/mms/ui/SavedMsgsList;->constructFileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    .local v1, renamedFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->dir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 449
    .local v0, newFile:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    if-eqz p1, :cond_0

    .line 451
    invoke-direct {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->fillConvFiles()V

    .line 455
    :goto_0
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->filesAdapter:Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 459
    :goto_1
    return-void

    .line 453
    :cond_0
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    iget v3, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mItemSelectedIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 457
    :cond_1
    const v2, 0x7f0a04f1

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private setOperation(I)V
    .locals 0
    .parameter "newOperation"

    .prologue
    .line 892
    iput p1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mOperation:I

    .line 893
    return-void
.end method

.method private setSavePanelInvisible()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 436
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mInput:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mButtons:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 438
    return-void
.end method

.method private startProperActivity(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 806
    new-instance v0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;Lcom/samsung/mms/ui/SavedMsgsList$1;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mReadFileTask:Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;

    .line 807
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mReadFileTask:Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 824
    return-void
.end method

.method private updateEmptyView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 408
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEmptyList:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->fileList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 415
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEmptyList:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->fileList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSubHeaderView()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSubTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 420
    :cond_0
    const-string v0, "Mms/SavedMsgsList"

    const-string v1, "updateSubHeaderView got null reference, return"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSubTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSubTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    :cond_2
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "extSdCard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 429
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSubTitleImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 431
    :cond_3
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSubTitleImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public ShowRenameDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 673
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 674
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03006e

    const v4, 0x7f0e01be

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 675
    .local v3, layoutDlg:Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    iget v5, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mItemSelectedIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 676
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 677
    .local v2, fileName:Ljava/lang/String;
    const v4, 0x7f0e01c0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    .line 678
    iget-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, p0, v5}, Lcom/samsung/mms/ui/SavedMsgsList;->getEditTextFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 679
    iget-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    const v5, 0x84001

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 680
    iget-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 681
    iget-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 683
    iget-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 685
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/samsung/mms/ui/SavedMsgsList$11;

    invoke-direct {v5, p0}, Lcom/samsung/mms/ui/SavedMsgsList$11;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 692
    const v4, 0x7f0a006a

    new-instance v5, Lcom/samsung/mms/ui/SavedMsgsList$12;

    invoke-direct {v5, p0}, Lcom/samsung/mms/ui/SavedMsgsList$12;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 698
    const v4, 0x7f0a006b

    new-instance v5, Lcom/samsung/mms/ui/SavedMsgsList$13;

    invoke-direct {v5, p0}, Lcom/samsung/mms/ui/SavedMsgsList$13;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 704
    const v4, 0x7f0a04ee

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 705
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 706
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mRenameAltDialog:Landroid/app/AlertDialog;

    .line 707
    iget-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mRenameAltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 709
    iget-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mRenameAltDialog:Landroid/app/AlertDialog;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mOkSaveBtn:Landroid/widget/Button;

    .line 710
    iget-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mOkSaveBtn:Landroid/widget/Button;

    new-instance v5, Lcom/samsung/mms/ui/SavedMsgsList$14;

    invoke-direct {v5, p0}, Lcom/samsung/mms/ui/SavedMsgsList$14;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    return-void
.end method

.method public checkForValidFileName()V
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEditFileName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEditFileName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 886
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 889
    :cond_0
    return-void
.end method

.method public formatDate(JLandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "date"
    .parameter "context"

    .prologue
    .line 600
    invoke-static {p3, p1, p2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, formatDate:Ljava/lang/String;
    return-object v0
.end method

.method public formatSize(J)Ljava/lang/String;
    .locals 11
    .parameter "size"

    .prologue
    const-wide/16 v9, 0x1

    const/high16 v8, 0x42c8

    const-wide/high16 v6, 0x4059

    .line 586
    const-string v0, ""

    .line 587
    .local v0, sizeFormatted:Ljava/lang/String;
    const-wide/16 v3, 0x400

    div-long v3, p1, v3

    cmp-long v3, v3, v9

    if-gez v3, :cond_0

    .line 588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    :goto_0
    return-object v0

    .line 589
    :cond_0
    const-wide/32 v3, 0x100000

    div-long v3, p1, v3

    cmp-long v3, v3, v9

    if-gez v3, :cond_1

    .line 590
    long-to-float v3, p1

    const/high16 v4, 0x4480

    div-float v1, v3, v4

    .line 591
    .local v1, sizeKb:F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    float-to-double v4, v1

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Kb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    goto :goto_0

    .line 593
    .end local v1           #sizeKb:F
    :cond_1
    long-to-float v3, p1

    const/high16 v4, 0x4980

    div-float v2, v3, v4

    .line 594
    .local v2, sizeMb:F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    float-to-double v4, v2

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Mb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEditTextFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;
    .locals 4
    .parameter "ctx"
    .parameter "maxSize"

    .prologue
    .line 936
    move v1, p2

    .line 938
    .local v1, stringSize:I
    const/4 v2, 0x2

    new-array v0, v2, [Landroid/text/InputFilter;

    .line 939
    .local v0, FilterArray:[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/mms/ui/SavedMsgsList$15;

    invoke-direct {v3, p0, v1, p1}, Lcom/samsung/mms/ui/SavedMsgsList$15;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;ILandroid/content/Context;)V

    aput-object v3, v0, v2

    .line 1002
    const/4 v2, 0x1

    new-instance v3, Lcom/samsung/mms/ui/SavedMsgsList$16;

    invoke-direct {v3, p0, p1}, Lcom/samsung/mms/ui/SavedMsgsList$16;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;Landroid/content/Context;)V

    aput-object v3, v0, v2

    .line 1019
    return-object v0
.end method

.method public handleHomeKey()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 369
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mMenuUp:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 370
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mMenuHome:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 371
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->ROOT_DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    .line 372
    invoke-direct {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->refreshList()V

    .line 373
    return-void
.end method

.method public handleUpKey()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 357
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, parent:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    .line 359
    invoke-direct {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->refreshList()V

    .line 361
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->ROOT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mMenuUp:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 363
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mMenuHome:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 366
    :cond_0
    return-void
.end method

.method public init(Z)V
    .locals 3
    .parameter "saveMode"

    .prologue
    const/4 v2, 0x0

    .line 376
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->fileList:Landroid/widget/ListView;

    .line 377
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->fileList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 378
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convAddresses:Ljava/util/ArrayList;

    .line 379
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 380
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 386
    const v1, 0x7f0e01cb

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEmptyList:Landroid/view/View;

    .line 387
    const v1, 0x7f0e01d1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mInput:Landroid/view/View;

    .line 388
    const v1, 0x7f0e01d2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mButtons:Landroid/view/View;

    .line 390
    if-eqz p1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mInput:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mButtons:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 394
    const v1, 0x7f0e01d5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSaveBtn:Landroid/widget/Button;

    .line 395
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 398
    const v1, 0x7f0e01d6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mCancelBtn:Landroid/widget/Button;

    .line 399
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    const v1, 0x7f0e01d4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEditFileName:Landroid/widget/EditText;

    .line 402
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEditFileName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 403
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mEditFileName:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->constructDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v5, 0x0

    .line 736
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 765
    :goto_0
    return-void

    .line 738
    :sswitch_0
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/samsung/mms/ui/SavedMsgsList;->setOperation(I)V

    .line 740
    invoke-virtual {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->checkForValidFileName()V

    .line 742
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/mms/ui/SavedMsgsList;->fileAlreadyExists(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mQueryHandler:Lcom/samsung/mms/ui/SavedMsgsList$BackgroundQueryHandler;

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mIds:[J

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "is_threadId"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->startQueryAllSmsSelected(Landroid/content/AsyncQueryHandler;I[JZ)V

    goto :goto_0

    .line 749
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 752
    :sswitch_2
    const-string v0, "Mms/SavedMsgsList"

    const-string v1, "Rename file"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-direct {p0, v5}, Lcom/samsung/mms/ui/SavedMsgsList;->fileAlreadyExists(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    invoke-virtual {p0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 756
    :cond_1
    invoke-direct {p0, v5}, Lcom/samsung/mms/ui/SavedMsgsList;->renameFile(Z)V

    .line 757
    invoke-virtual {p0, v2}, Landroid/app/Activity;->dismissDialog(I)V

    goto :goto_0

    .line 761
    :sswitch_3
    const-string v0, "Mms/SavedMsgsList"

    const-string v1, "Cancel file"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-virtual {p0, v2}, Landroid/app/Activity;->dismissDialog(I)V

    goto :goto_0

    .line 736
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e01c2 -> :sswitch_2
        0x7f0e01c3 -> :sswitch_3
        0x7f0e01d5 -> :sswitch_0
        0x7f0e01d6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 649
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 650
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mItemSelectedIndex:I

    .line 651
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 668
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 653
    :pswitch_0
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/samsung/mms/ui/SavedMsgsList;->setOperation(I)V

    .line 654
    iget v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mItemSelectedIndex:I

    invoke-direct {p0, v2}, Lcom/samsung/mms/ui/SavedMsgsList;->checkIfEncrypted(I)V

    goto :goto_0

    .line 657
    :pswitch_1
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/samsung/mms/ui/SavedMsgsList;->setOperation(I)V

    .line 658
    iget v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mItemSelectedIndex:I

    invoke-direct {p0, v2}, Lcom/samsung/mms/ui/SavedMsgsList;->checkIfEncrypted(I)V

    goto :goto_0

    .line 661
    :pswitch_2
    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 664
    :pswitch_3
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/samsung/mms/ui/SavedMsgsList;->setOperation(I)V

    .line 665
    invoke-virtual {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->ShowRenameDialog()V

    goto :goto_0

    .line 651
    :pswitch_data_0
    .packed-switch 0x7f0e0253
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 185
    const-string v1, "Mms/SavedMsgsList"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const v1, 0x7f030073

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 188
    iput-object p0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mContext:Landroid/content/Context;

    .line 189
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/mms/util/SaveRestoreOperation;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/SavedMsgsList;->init(Z)V

    .line 191
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->fileList:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 193
    const v1, 0x7f0e01d0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSubTitleTextView:Landroid/widget/TextView;

    .line 194
    const v1, 0x7f0e01cf

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSubTitleImageView:Landroid/widget/ImageView;

    .line 196
    new-instance v1, Lcom/samsung/mms/ui/SavedMsgsList$BackgroundQueryHandler;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/mms/ui/SavedMsgsList$BackgroundQueryHandler;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mQueryHandler:Lcom/samsung/mms/ui/SavedMsgsList$BackgroundQueryHandler;

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ids"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mIds:[J

    .line 199
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 200
    .local v0, sdCard:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mDefaultDirName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->dir:Ljava/io/File;

    .line 201
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mDefaultDirName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    .line 203
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mInflater:Landroid/view/LayoutInflater;

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    .line 206
    invoke-direct {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->fillConvFiles()V

    .line 207
    new-instance v1, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;

    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2}, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->filesAdapter:Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;

    .line 208
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList;->filesAdapter:Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;

    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    invoke-direct {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->updateEmptyView()V

    .line 210
    invoke-direct {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->updateSubHeaderView()V

    .line 211
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 212
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 635
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 636
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .local v1, inflater:Landroid/view/MenuInflater;
    move-object v2, p3

    .line 637
    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 638
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    iget v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 639
    .local v3, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    iget v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 640
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    const v4, 0x7f0d0003

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 644
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    .line 505
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 506
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    sparse-switch p1, :sswitch_data_0

    .line 580
    const/4 v0, 0x0

    .line 582
    :goto_0
    return-object v0

    .line 508
    :sswitch_0
    const v4, 0x7f0a04ee

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 509
    const v4, 0x7f0a018f

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 510
    const v4, 0x7f0a011e

    new-instance v5, Lcom/samsung/mms/ui/SavedMsgsList$5;

    invoke-direct {v5, p0}, Lcom/samsung/mms/ui/SavedMsgsList$5;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 523
    const v4, 0x7f0a011f

    new-instance v5, Lcom/samsung/mms/ui/SavedMsgsList$6;

    invoke-direct {v5, p0}, Lcom/samsung/mms/ui/SavedMsgsList$6;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 528
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 529
    .local v0, alertDialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 531
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    :sswitch_1
    iget-boolean v4, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSaveError:Z

    if-eqz v4, :cond_0

    const v3, 0x7f0a01f5

    .line 532
    .local v3, title:I
    :goto_1
    iget-boolean v4, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSaveError:Z

    if-eqz v4, :cond_1

    const v2, 0x7f0a04f3

    .line 533
    .local v2, msg:I
    :goto_2
    const v4, 0x108009b

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 534
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 535
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 536
    const v4, 0x7f0a011d

    new-instance v5, Lcom/samsung/mms/ui/SavedMsgsList$7;

    invoke-direct {v5, p0}, Lcom/samsung/mms/ui/SavedMsgsList$7;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 541
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 542
    .restart local v0       #alertDialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 531
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v2           #msg:I
    .end local v3           #title:I
    :cond_0
    const v3, 0x7f0a04f7

    goto :goto_1

    .line 532
    .restart local v3       #title:I
    :cond_1
    const v2, 0x7f0a04f5

    goto :goto_2

    .line 545
    .end local v3           #title:I
    :sswitch_2
    const v4, 0x7f0a04fd

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 546
    const v4, 0x7f0a04fe

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 547
    const v4, 0x7f0a006a

    new-instance v5, Lcom/samsung/mms/ui/SavedMsgsList$8;

    invoke-direct {v5, p0}, Lcom/samsung/mms/ui/SavedMsgsList$8;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 552
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 553
    .restart local v0       #alertDialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 556
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    :sswitch_3
    const v4, 0x7f0a009a

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 557
    const v4, 0x7f0a009c

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 558
    const v4, 0x7f0a01e9

    new-instance v5, Lcom/samsung/mms/ui/SavedMsgsList$9;

    invoke-direct {v5, p0}, Lcom/samsung/mms/ui/SavedMsgsList$9;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 563
    const v4, 0x7f0a01e7

    new-instance v5, Lcom/samsung/mms/ui/SavedMsgsList$10;

    invoke-direct {v5, p0}, Lcom/samsung/mms/ui/SavedMsgsList$10;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 576
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 577
    .restart local v0       #alertDialog:Landroid/app/AlertDialog;
    goto/16 :goto_0

    .line 506
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0xe -> :sswitch_2
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 217
    const-string v0, "Mms/SavedMsgsList"

    const-string v1, "OnDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->filesAdapter:Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->filesAdapter:Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 222
    iput-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->filesAdapter:Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 226
    iput-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convAddresses:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 230
    iput-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->convAddresses:Ljava/util/ArrayList;

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->array:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->array:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 234
    iput-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->array:Ljava/util/ArrayList;

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    if-eqz v0, :cond_4

    .line 237
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-virtual {v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->OnDestroy()V

    .line 238
    iput-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    .line 241
    :cond_4
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mReadFileTask:Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;

    if-eqz v0, :cond_5

    .line 242
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mReadFileTask:Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 244
    :cond_5
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 769
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/samsung/mms/ui/SavedMsgsList;->setOperation(I)V

    .line 770
    invoke-direct {p0, p3}, Lcom/samsung/mms/ui/SavedMsgsList;->handleListItemClick(I)V

    .line 771
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 266
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 267
    .local v0, itemId:I
    const-string v2, "Mms/SavedMsgsList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOptionsItemSelected(),item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sparse-switch v0, :sswitch_data_0

    .line 281
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 270
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 274
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->handleUpKey()V

    goto :goto_0

    .line 278
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->handleHomeKey()V

    goto :goto_0

    .line 268
    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_1
        0x10 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 253
    const-string v0, "Mms/SavedMsgsList"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 255
    const/16 v0, 0x10

    const v1, 0x7f0a050b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mMenuHome:Landroid/view/MenuItem;

    .line 256
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mMenuHome:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 257
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mMenuHome:Landroid/view/MenuItem;

    const v1, 0x7f020287

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 259
    const/16 v0, 0xf

    const v1, 0x7f0a050c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mMenuUp:Landroid/view/MenuItem;

    .line 260
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mMenuUp:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 261
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList;->mMenuUp:Landroid/view/MenuItem;

    const v1, 0x7f02028a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 249
    invoke-direct {p0}, Lcom/samsung/mms/ui/SavedMsgsList;->refreshList()V

    .line 250
    return-void
.end method
