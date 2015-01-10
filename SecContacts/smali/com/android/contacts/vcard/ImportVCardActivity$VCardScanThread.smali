.class Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardScanThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field private mCheckedPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGotIOException:Z

.field private mRootDirectory:Ljava/io/File;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/io/File;)V
    .locals 3
    .parameter
    .parameter "sdcardDirectory"

    .prologue
    const/4 v1, 0x0

    .line 687
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 688
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 689
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    .line 690
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    .line 691
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    .line 692
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/contacts/ContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 694
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "VCardImport"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 697
    return-void
.end method

.method private getVCardFileRecursively(Ljava/io/File;)V
    .locals 14
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 737
    iget-boolean v11, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v11, :cond_0

    .line 738
    new-instance v11, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;

    invoke-direct {v11, p0, v13}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V

    throw v11

    .line 744
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 750
    .local v6, files:[Ljava/io/File;
    :goto_0
    if-nez v6, :cond_2

    .line 751
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 752
    .local v2, currentDirectoryPath:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".android_secure"

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 754
    .local v9, secureDirectoryPath:Ljava/lang/String;
    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 755
    const-string v11, "VCardImport"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "listFiles() returned null (directory: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    .end local v2           #currentDirectoryPath:Ljava/lang/String;
    .end local v9           #secureDirectoryPath:Ljava/lang/String;
    :cond_1
    return-void

    .line 745
    .end local v6           #files:[Ljava/io/File;
    :catch_0
    move-exception v3

    .line 746
    .local v3, e:Ljava/lang/OutOfMemoryError;
    const-string v11, "VCardImport"

    const-string v12, "OutOfMemoryError when calling listFiles()"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 748
    const/4 v6, 0x0

    .restart local v6       #files:[Ljava/io/File;
    goto :goto_0

    .line 759
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v4, v0, v7

    .line 760
    .local v4, file:Ljava/io/File;
    iget-boolean v11, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v11, :cond_3

    .line 761
    new-instance v11, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;

    invoke-direct {v11, p0, v13}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V

    throw v11

    .line 763
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, canonicalPath:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v11, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 759
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 768
    :cond_5
    iget-object v11, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 770
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 771
    invoke-direct {p0, v4}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V

    goto :goto_2

    .line 772
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".vcf"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 774
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 775
    .local v5, fileName:Ljava/lang/String;
    new-instance v10, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-direct {v10, v5, v1, v11, v12}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 777
    .local v10, vcardFile:Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    iget-object v11, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v11}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$700(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 783
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 784
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 787
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 788
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 790
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 701
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v3, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$702(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;

    .line 703
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 704
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$1000(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 710
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 713
    :goto_0
    iget-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v3, :cond_0

    .line 714
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v3, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$702(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;

    .line 717
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$1100(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 718
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;
    invoke-static {v3, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$1102(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 720
    iget-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    if-eqz v3, :cond_1

    .line 721
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v4, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v5, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v6, 0x7f09000c

    invoke-direct {v4, v5, v6}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;I)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 733
    :goto_1
    return-void

    .line 705
    :catch_0
    move-exception v1

    .line 706
    .local v1, e:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 707
    .end local v1           #e:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    :catch_1
    move-exception v1

    .line 708
    .local v1, e:Ljava/io/IOException;
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 710
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    .line 722
    :cond_1
    iget-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v3, :cond_2

    .line 723
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 725
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$700(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 726
    .local v2, size:I
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    .line 727
    .local v0, context:Landroid/content/Context;
    if-nez v2, :cond_3

    .line 728
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v4, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v5, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v6, 0x7f090007

    invoke-direct {v4, v5, v6}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;I)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 730
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #calls: Lcom/android/contacts/vcard/ImportVCardActivity;->startVCardSelectAndImport()V
    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$1200(Lcom/android/contacts/vcard/ImportVCardActivity;)V

    goto :goto_1
.end method