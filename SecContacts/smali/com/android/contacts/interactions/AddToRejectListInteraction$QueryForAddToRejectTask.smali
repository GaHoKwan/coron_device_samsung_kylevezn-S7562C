.class Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;
.super Landroid/os/AsyncTask;
.source "AddToRejectListInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/interactions/AddToRejectListInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryForAddToRejectTask"
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
    .line 590
    iput-object p1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 590
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;
    .locals 9
    .parameter "taskResults"

    .prologue
    .line 592
    const/4 v6, 0x0

    aget-object v5, p1, v6

    .line 593
    .local v5, taskResult:Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;
    iget-object v0, v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->contactUri:Landroid/net/Uri;

    .line 595
    .local v0, contactUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/android/contacts/interactions/AddToRejectListInteraction;->getCountOfTotalBlackList()I
    invoke-static {v6}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$500(Lcom/android/contacts/interactions/AddToRejectListInteraction;)I

    move-result v1

    .line 596
    .local v1, countOfTotalBlackList:I
    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/android/contacts/interactions/AddToRejectListInteraction;->queryExactlyMatchBlackList()Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$600(Lcom/android/contacts/interactions/AddToRejectListInteraction;)Ljava/util/HashMap;

    move-result-object v3

    .line 597
    .local v3, exactlyMatchBlackListlHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    #calls: Lcom/android/contacts/interactions/AddToRejectListInteraction;->getPhoneNumbers(J)Ljava/util/ArrayList;
    invoke-static {v6, v7, v8}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$700(Lcom/android/contacts/interactions/AddToRejectListInteraction;J)Ljava/util/ArrayList;

    move-result-object v4

    .line 598
    .local v4, phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    #calls: Lcom/android/contacts/interactions/AddToRejectListInteraction;->getDisplayName(J)Ljava/lang/String;
    invoke-static {v6, v7, v8}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$800(Lcom/android/contacts/interactions/AddToRejectListInteraction;J)Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, displayName:Ljava/lang/String;
    iput v1, v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->countOfTotalBlackList:I

    .line 601
    iput-object v3, v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->exactlyMatchblackListHashMap:Ljava/util/HashMap;

    .line 602
    iput-object v4, v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    .line 603
    iput-object v2, v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->displayName:Ljava/lang/String;

    .line 604
    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/android/contacts/interactions/AddToRejectListInteraction;->findSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    invoke-static {v6, v5}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$900(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    .line 606
    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/android/contacts/interactions/AddToRejectListInteraction;->makeRejectValues(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    invoke-static {v6, v5}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$1000(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    .line 608
    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 590
    check-cast p1, [Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->doInBackground([Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 612
    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/android/contacts/interactions/AddToRejectListInteraction;->isOverBlackListSize(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Z
    invoke-static {v1, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$1100(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    #getter for: Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$1200(Lcom/android/contacts/interactions/AddToRejectListInteraction;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_maxcount"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 615
    .local v0, nRejectMaxCnt:I
    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/android/contacts/interactions/AddToRejectListInteraction;->showBlackListSizeOverDialog(I)V
    invoke-static {v1, v0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$1300(Lcom/android/contacts/interactions/AddToRejectListInteraction;I)V

    .line 619
    .end local v0           #nRejectMaxCnt:I
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    #calls: Lcom/android/contacts/interactions/AddToRejectListInteraction;->checkSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    invoke-static {v1, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$1400(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 590
    check-cast p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->onPostExecute(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    return-void
.end method
