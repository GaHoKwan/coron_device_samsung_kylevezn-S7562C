.class public Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MultiDataPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllDataDeleted()V
    .locals 0

    .prologue
    .line 1390
    return-void
.end method

.method public onInteractionPickerAction(Landroid/net/Uri;)V
    .locals 1
    .parameter "dataUri"

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    sparse-switch v0, :sswitch_data_0

    .line 1370
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/net/Uri;)V

    .line 1373
    :goto_0
    return-void

    .line 1360
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickPhoneResult(Landroid/net/Uri;)V

    goto :goto_0

    .line 1363
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/net/Uri;)V

    goto :goto_0

    .line 1366
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/net/Uri;)V

    goto :goto_0

    .line 1356
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xaa -> :sswitch_0
        0xbe -> :sswitch_0
    .end sparse-switch
.end method

.method public onOneDataInputed()V
    .locals 0

    .prologue
    .line 1395
    return-void
.end method

.method public onPickContactAction(Ljava/util/HashMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1299
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    const v1, 0x7f0d0436

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    .line 1308
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    .line 1309
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Ljava/util/HashMap;)V

    .line 1343
    :goto_0
    return-void

    .line 1312
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendContactsIntent(Ljava/util/HashMap;)V

    goto :goto_0

    .line 1316
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0x123

    if-ne v0, v1, :cond_3

    .line 1317
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnSoureIdPickerResult(Ljava/util/HashMap;)V

    goto :goto_0

    .line 1320
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_4

    .line 1321
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    const-class v2, Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1323
    const-string v1, "file_name"

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getVcardName(Ljava/util/HashMap;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$500(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1324
    const-string v1, "path"

    sget-object v2, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1325
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1326
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1327
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1328
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_5

    .line 1329
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    const-class v2, Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1331
    const-string v1, "file_name"

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getVcardName(Ljava/util/HashMap;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$500(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1332
    const-string v1, "path"

    sget-object v2, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1333
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1334
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1335
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1337
    :cond_5
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$600()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$700()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 1338
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendVcardByMultiUriIntent(Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 1340
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendVcardIntent(Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method public onPickDataAction(Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1285
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0x125

    if-ne v0, v1, :cond_1

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendActionIntent(Ljava/util/HashMap;)V

    .line 1294
    :goto_0
    return-void

    .line 1292
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public onPickGroupDataAction(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1401
    .local p1, mSelectedContactHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onPickSpeedDialAction(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickPhoneResult(Landroid/net/Uri;)V

    .line 1406
    return-void
.end method

.method public onPickSpeedDialAction(Landroid/net/Uri;J)V
    .locals 1
    .parameter "uri"
    .parameter "dataid"

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickPhoneResult(Landroid/net/Uri;J)V

    .line 1411
    return-void
.end method

.method public onRecentListAction(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 1352
    return-void
.end method

.method public onSelected(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 1415
    const-string v0, "InteractionTabActivity"

    const-string v1, "onSelected"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #setter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I
    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$802(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;I)I

    .line 1417
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$800(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z
    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$902(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Z)Z

    .line 1418
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1000(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1100(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1200(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1200(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$800(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)I

    move-result v2

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->actionbarTitle(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1424
    return-void

    .line 1417
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
