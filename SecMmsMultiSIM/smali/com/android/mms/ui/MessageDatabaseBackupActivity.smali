.class public Lcom/android/mms/ui/MessageDatabaseBackupActivity;
.super Landroid/app/Activity;
.source "MessageDatabaseBackupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;,
        Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    }
.end annotation


# static fields
.field private static final BACKUP_FILE_NAME_PREFIX:Ljava/lang/String; = "MMS_BACKUP_"

.field private static final BACKUP_FILE_PATH:Ljava/lang/String; = "/mnt/sdcard/"

.field private static final BACKUP_RESULT_FOLDER_NAME:Ljava/lang/String; = "/mnt/sdcard/MMS_BACKUP"

.field private static final BTN_NAME_BACKUP:Ljava/lang/String; = "1. MESSAGE DB BACKUP"

.field private static final BTN_NAME_RESTORE:Ljava/lang/String; = "2. MEESSAGE DB RESTORE"

.field private static BUFFER_SIZE:I = 0x0

.field private static final DEFAULT_CRYPTO_KEY:Ljava/lang/String; = "12345678901234567890123456789012"

.field private static final EXT_MSG:Ljava/lang/String; = ".edb"

.field private static final EXT_ZIP:Ljava/lang/String; = ".zip"

.field private static final FLAG_DB_BACKUP_COMPLETE:I = 0x1

.field private static final FLAG_DB_BACKUP_START:I = 0x0

.field private static final FLAG_DB_RESTORE_COMPLETE:I = 0x3

.field private static final FLAG_DB_RESTORE_START:I = 0x2

.field private static final INTENT_WORKING_MODE_ENG:Ljava/lang/String; = "ENG"

.field private static final INTENT_WORKING_MODE_USER:Ljava/lang/String; = "USER"

.field private static final RET_VALUE_FALSE:I = 0x0

.field private static final RET_VALUE_TRUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MessageDatabaseBackupActivity"

.field private static final WORKTHREAD_MODE_BACKUP:I = 0x0

.field private static final WORKTHREAD_MODE_RESTORE:I = 0x1


# instance fields
.field public mAdapterPathName:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mArrayPathName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDlgProg:Landroid/app/ProgressDialog;

.field private mEventHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mIntentWorkingMode:Ljava/lang/String;

.field public mListView:Landroid/widget/ListView;

.field public mTextviewBackupFileName:Landroid/widget/TextView;

.field public mTextviewRestoreFileName:Landroid/widget/TextView;

.field private mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x800

    sput v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mIntent:Landroid/content/Intent;

    .line 82
    const-string v0, "USER"

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mIntentWorkingMode:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mArrayPathName:Ljava/util/ArrayList;

    .line 605
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;)Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BUFFER_SIZE:I

    return v0
.end method

.method private checkExternalStorage()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 197
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, szExternalMountPath:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 199
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "External Storage mount error!!"

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 200
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 201
    const/4 v4, 0x0

    .line 209
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_0
    :goto_0
    return v4

    .line 204
    :cond_1
    const-string v2, "/mnt/sdcard/MMS_BACKUP"

    .line 205
    .local v2, szResultTargetDir:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, resultDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_0
.end method

.method private createEventHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getProgressDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "title"
    .parameter "message"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mDlgProg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mDlgProg:Landroid/app/ProgressDialog;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mDlgProg:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public initRestoreList()V
    .locals 8

    .prologue
    .line 121
    new-instance v3, Ljava/io/File;

    const-string v5, "/mnt/sdcard/MMS_BACKUP"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v3, srcFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const-string v5, "ENG"

    iget-object v6, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mIntentWorkingMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    const v5, 0x7f0e0144

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 132
    .local v2, restoreLayout:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mArrayPathName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 135
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    if-eqz v5, :cond_2

    .line 136
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->clear()V

    .line 139
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 140
    .local v0, arrayFile:[Ljava/io/File;
    if-eqz v0, :cond_4

    .line 141
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_4

    .line 142
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, szPathName:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".edb"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 144
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mArrayPathName:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    .end local v1           #i:I
    .end local v4           #szPathName:Ljava/lang/String;
    :cond_4
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x109000f

    iget-object v7, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mArrayPathName:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    .line 149
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    .line 157
    invoke-direct {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->checkExternalStorage()Z

    move-result v4

    if-nez v4, :cond_1

    .line 158
    const-string v4, "External Storage mount failed"

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 159
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 193
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0e0140

    if-ne v4, v5, :cond_2

    .line 164
    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewBackupFileName:Landroid/widget/TextView;

    const-string v5, "message backup starting"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS_BACKUP_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "yyMMdd_hhmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, szFileName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/mnt/sdcard/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, szPathName:Ljava/lang/String;
    new-instance v4, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, p0, v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    .line 169
    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    if-eqz v4, :cond_0

    .line 170
    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    invoke-virtual {v4, v8, v2, v1}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->setData(ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 174
    .end local v1           #szFileName:Ljava/lang/String;
    .end local v2           #szPathName:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0e0146

    if-ne v4, v5, :cond_0

    .line 175
    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    .line 176
    .local v0, nSel:I
    if-gez v0, :cond_3

    .line 177
    const-string v4, "Select the file in restore list"

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 178
    .restart local v3       #toast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 181
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewRestoreFileName:Landroid/widget/TextView;

    const-string v5, "message restore starting"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    .restart local v2       #szPathName:Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v5, ".edb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 185
    .restart local v1       #szFileName:Ljava/lang/String;
    new-instance v4, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, p0, v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    .line 186
    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    if-eqz v4, :cond_0

    .line 187
    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2, v1}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->setData(ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mIntent:Landroid/content/Intent;

    .line 92
    iget-object v2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "MODE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mIntentWorkingMode:Ljava/lang/String;

    .line 95
    :cond_0
    const v2, 0x7f03004d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 97
    const v2, 0x7f0e0140

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 98
    .local v0, backupButton:Landroid/widget/Button;
    const v2, 0x7f0e0146

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 99
    .local v1, restoreButton:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const-string v2, "1. MESSAGE DB BACKUP"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const-string v2, "2. MEESSAGE DB RESTORE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v2, 0x7f0e0141

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewBackupFileName:Landroid/widget/TextView;

    .line 105
    const v2, 0x7f0e0147

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewRestoreFileName:Landroid/widget/TextView;

    .line 106
    const v2, 0x7f0e014c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mListView:Landroid/widget/ListView;

    .line 108
    invoke-direct {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->createEventHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    .line 110
    return-void
.end method

.method public onProgressDlgCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "message"

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getProgressDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 234
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public onProgressDlgStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "message"

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getProgressDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 223
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 226
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 115
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->initRestoreList()V

    .line 116
    return-void
.end method
