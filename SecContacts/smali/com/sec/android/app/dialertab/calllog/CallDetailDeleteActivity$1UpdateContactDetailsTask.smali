.class Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;
.super Landroid/os/AsyncTask;
.source "CallDetailDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->updateData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateContactDetailsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

.field final synthetic val$callUris:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 861
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->val$callUris:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 861
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->doInBackground([Ljava/lang/Void;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 4
    .parameter "params"

    .prologue
    .line 874
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->val$callUris:Ljava/lang/String;

    #calls: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .line 875
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :goto_0
    return-object v1

    .line 876
    :catch_0
    move-exception v0

    .line 878
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "CallDetailDeleteActivity"

    const-string v2, "invalid URI starting call details"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 861
    check-cast p1, [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V

    return-void
.end method

.method public onPostExecute([Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
    .locals 18
    .parameter "details"

    .prologue
    .line 886
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    if-nez v1, :cond_2

    .line 888
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const v2, 0x7f0d00ba

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 890
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->finish()V

    .line 964
    :cond_1
    :goto_0
    return-void

    .line 895
    :cond_2
    const/4 v1, 0x0

    aget-object v10, p1, v1

    .line 896
    .local v10, firstDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v2, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1102(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 897
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v2, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1202(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 898
    iget-object v9, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 899
    .local v9, contactUri:Landroid/net/Uri;
    iget-object v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    .line 904
    .local v16, photoUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 905
    .local v6, canPlaceCallsTo:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 906
    .local v12, isVoicemailNumber:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 914
    .local v11, isSipNumber:Z
    iget-object v1, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 915
    iget-object v15, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 920
    .local v15, nameOrNumber:Ljava/lang/CharSequence;
    :goto_1
    if-eqz v9, :cond_5

    .line 921
    new-instance v14, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v14, v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 922
    .local v14, mainActionIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const v2, 0x7f0d021f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 951
    .local v13, mainActionDescription:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v17, v0

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZZLandroid/view/View;)V

    move-object/from16 v0, v17

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$302(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    .line 954
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 955
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 956
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 958
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 959
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->setAllItemChecked(Z)V

    .line 961
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 962
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->startCheckProcessing()V

    goto/16 :goto_0

    .line 917
    .end local v13           #mainActionDescription:Ljava/lang/String;
    .end local v14           #mainActionIntent:Landroid/content/Intent;
    .end local v15           #nameOrNumber:Ljava/lang/CharSequence;
    :cond_4
    iget-object v15, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .restart local v15       #nameOrNumber:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 924
    :cond_5
    if-eqz v12, :cond_6

    .line 925
    const/4 v14, 0x0

    .line 926
    .restart local v14       #mainActionIntent:Landroid/content/Intent;
    const/4 v13, 0x0

    .restart local v13       #mainActionDescription:Ljava/lang/String;
    goto :goto_2

    .line 927
    .end local v13           #mainActionDescription:Ljava/lang/String;
    .end local v14           #mainActionIntent:Landroid/content/Intent;
    :cond_6
    if-eqz v11, :cond_7

    .line 937
    const/4 v14, 0x0

    .line 938
    .restart local v14       #mainActionIntent:Landroid/content/Intent;
    const/4 v13, 0x0

    .restart local v13       #mainActionDescription:Ljava/lang/String;
    goto/16 :goto_2

    .line 939
    .end local v13           #mainActionDescription:Ljava/lang/String;
    .end local v14           #mainActionIntent:Landroid/content/Intent;
    :cond_7
    if-eqz v6, :cond_8

    .line 940
    new-instance v14, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 941
    .restart local v14       #mainActionIntent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 942
    const-string v1, "phone"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const v2, 0x7f0d021e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #mainActionDescription:Ljava/lang/String;
    goto/16 :goto_2

    .line 947
    .end local v13           #mainActionDescription:Ljava/lang/String;
    .end local v14           #mainActionIntent:Landroid/content/Intent;
    :cond_8
    const/4 v14, 0x0

    .line 948
    .restart local v14       #mainActionIntent:Landroid/content/Intent;
    const/4 v13, 0x0

    .restart local v13       #mainActionDescription:Ljava/lang/String;
    goto/16 :goto_2
.end method
