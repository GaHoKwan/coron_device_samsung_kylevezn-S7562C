.class Lcom/android/contacts/interactions/ImportExportDialogFragment$3;
.super Ljava/lang/Object;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/ImportExportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 292
    .line 293
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 294
    sparse-switch v0, :sswitch_data_0

    .line 445
    const-string v1, "ImportExportDialogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 450
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 452
    :cond_1
    return-void

    .line 299
    :sswitch_0
    iget-object v3, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    .line 300
    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 303
    iget-object v3, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v3, v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->selectSimForDS(I)Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 305
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    move v2, v1

    .line 307
    goto :goto_0

    .line 318
    :cond_2
    :sswitch_1
    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    #calls: Lcom/android/contacts/interactions/ImportExportDialogFragment;->handleImportRequest(I)Z
    invoke-static {v1, v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->access$000(Lcom/android/contacts/interactions/ImportExportDialogFragment;I)Z

    move-result v2

    goto :goto_0

    .line 323
    :sswitch_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableSelectableListToExportSdCard"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    const-string v1, "additional"

    const-string v3, "intent.action.EXPORT_TO_INTERNEL_SDCARD"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 333
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/ct_backup"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    .line 338
    :cond_4
    const-string v1, "file_name"

    iget-object v3, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    #calls: Lcom/android/contacts/interactions/ImportExportDialogFragment;->getVcardName()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->access$100(Lcom/android/contacts/interactions/ImportExportDialogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v1, "path"

    sget-object v3, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 345
    :sswitch_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableSelectableListToExportSdCard"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 348
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    const-string v1, "additional"

    const-string v3, "intent.action.EXPORT_TO_EXTERNEL_SDCARD"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 355
    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/ct_backup"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    .line 360
    :cond_6
    const-string v1, "file_name"

    iget-object v3, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    #calls: Lcom/android/contacts/interactions/ImportExportDialogFragment;->getVcardName()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->access$100(Lcom/android/contacts/interactions/ImportExportDialogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v1, "path"

    sget-object v3, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 370
    :sswitch_4
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    #getter for: Lcom/android/contacts/interactions/ImportExportDialogFragment;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;
    invoke-static {v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->access$200(Lcom/android/contacts/interactions/ImportExportDialogFragment;)Lcom/android/contacts/preference/ContactsPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getSendContactType()I

    move-result v0

    .line 371
    new-instance v1, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_LIST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    const-string v3, "additional"

    const-string v4, "vcard-multi"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v3, "sendtype"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    const-string v0, "actionbar_title"

    const-string v3, "Share namecard via"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 386
    :sswitch_5
    iget-object v3, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    .line 387
    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 390
    iget-object v3, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v3, v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->selectSimForDS(I)Z

    move-result v0

    if-ne v0, v2, :cond_b

    .line 392
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    move v2, v1

    .line 394
    goto/16 :goto_0

    .line 397
    :cond_7
    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v3, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v3, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "phone1_on"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.EXPORT_SIM2_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 406
    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    :goto_1
    move v2, v0

    .line 432
    goto/16 :goto_0

    .line 408
    :cond_8
    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v3, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v3, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 415
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.EXPORT_SIM2_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 417
    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 419
    goto :goto_1

    .line 421
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.EXPORT_SIM_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 423
    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    goto :goto_1

    .line 437
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.EXPORT_SIM2_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 439
    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto/16 :goto_1

    .line 294
    :sswitch_data_0
    .sparse-switch
        0x7f0d00e2 -> :sswitch_0
        0x7f0d00e3 -> :sswitch_0
        0x7f0d024d -> :sswitch_4
        0x7f0d02dd -> :sswitch_2
        0x7f0d02de -> :sswitch_3
        0x7f0d02df -> :sswitch_1
        0x7f0d02e0 -> :sswitch_1
        0x7f0d02ea -> :sswitch_5
        0x7f0d02eb -> :sswitch_5
        0x7f0d0410 -> :sswitch_0
        0x7f0d0411 -> :sswitch_6
    .end sparse-switch
.end method
