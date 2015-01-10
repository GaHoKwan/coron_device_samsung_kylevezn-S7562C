.class Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;
.super Landroid/os/AsyncTask;
.source "AddToRejectListInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/interactions/AddToRejectListInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveFromRejectListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;",
        "Ljava/lang/Void;",
        "Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;


# direct methods
.method private constructor <init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V
    .locals 0
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    return-void
.end method

.method private RemoveFromRejectList(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 744
    .local p1, rejectValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;>;"
    const-string v6, "reject_number=? AND reject_checked=1"

    .line 745
    .local v6, selection:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v3, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v4, Lcom/android/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    .line 747
    .local v4, rejectUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 750
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;

    .line 751
    .local v5, rejectValue:Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->number:Ljava/lang/String;

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 754
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 757
    .end local v5           #rejectValue:Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    #getter for: Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$1200(Lcom/android/contacts/interactions/AddToRejectListInteraction;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.android.phone.callsettings"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 763
    :goto_1
    return-void

    .line 758
    :catch_0
    move-exception v1

    .line 759
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 760
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 761
    .local v1, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;
    .locals 12
    .parameter "results"

    .prologue
    .line 712
    const/4 v9, 0x0

    aget-object v7, p1, v9

    .line 713
    .local v7, taskResult:Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;
    iget-object v2, v7, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->contactUri:Landroid/net/Uri;

    .line 714
    .local v2, contactUri:Landroid/net/Uri;
    iget-object v9, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    #calls: Lcom/android/contacts/interactions/AddToRejectListInteraction;->getPhoneNumbers(J)Ljava/util/ArrayList;
    invoke-static {v9, v10, v11}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$700(Lcom/android/contacts/interactions/AddToRejectListInteraction;J)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v7, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    .line 715
    iget-object v9, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/android/contacts/interactions/AddToRejectListInteraction;->findSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    invoke-static {v9, v7}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$900(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    .line 716
    iget-object v9, v7, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumContactsIdsArr:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 717
    iget-object v9, v7, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumContactsIdsArr:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 718
    .local v0, contactId:J
    iget-object v9, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/android/contacts/interactions/AddToRejectListInteraction;->getPhoneNumbers(J)Ljava/util/ArrayList;
    invoke-static {v9, v0, v1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$700(Lcom/android/contacts/interactions/AddToRejectListInteraction;J)Ljava/util/ArrayList;

    move-result-object v8

    .line 719
    .local v8, tempPhoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 720
    .local v6, phoneNumber:Ljava/lang/String;
    iget-object v9, v7, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 721
    iget-object v9, v7, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 727
    .end local v0           #contactId:J
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #phoneNumber:Ljava/lang/String;
    .end local v8           #tempPhoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v9, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/android/contacts/interactions/AddToRejectListInteraction;->queryExactlyMatchBlackList()Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$600(Lcom/android/contacts/interactions/AddToRejectListInteraction;)Ljava/util/HashMap;

    move-result-object v3

    .line 728
    .local v3, exactlyMatchBlackListlHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object v3, v7, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->exactlyMatchblackListHashMap:Ljava/util/HashMap;

    .line 729
    iget-object v9, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/android/contacts/interactions/AddToRejectListInteraction;->makeRejectValues(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    invoke-static {v9, v7}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$1000(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    .line 730
    iget-object v9, v7, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->rejectValues:Ljava/util/ArrayList;

    invoke-direct {p0, v9}, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->RemoveFromRejectList(Ljava/util/ArrayList;)V

    .line 731
    return-object v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 709
    check-cast p1, [Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->doInBackground([Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 736
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    #getter for: Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$1200(Lcom/android/contacts/interactions/AddToRejectListInteraction;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    #getter for: Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$1200(Lcom/android/contacts/interactions/AddToRejectListInteraction;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0327

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/android/contacts/interactions/AddToRejectListInteraction;->executeNextJob()V
    invoke-static {v0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$300(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    .line 741
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 709
    check-cast p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->onPostExecute(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    return-void
.end method
