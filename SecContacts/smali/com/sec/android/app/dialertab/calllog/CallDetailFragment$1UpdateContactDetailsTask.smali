.class Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;
.super Landroid/os/AsyncTask;
.source "CallDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->updateData(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

.field final synthetic val$callUris:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 707
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->val$callUris:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 707
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->doInBackground([Ljava/lang/Void;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 718
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->bConfigurationChanged:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$402(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Z)Z

    .line 720
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->val$callUris:Ljava/lang/String;

    #calls: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 730
    :goto_0
    return-object v1

    .line 721
    :catch_0
    move-exception v0

    .line 723
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "CallDetailFragment"

    const-string v3, "invalid URI starting call details"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 725
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 726
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "CallDetailFragment"

    const-string v3, "invalid details index"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 728
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_2
    move-exception v0

    .line 729
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "CallDetailFragment"

    const-string v3, "Not Attatched Activity"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 707
    check-cast p1, [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->onPostExecute([Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V

    return-void
.end method

.method public onPostExecute([Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
    .locals 54
    .parameter "details"

    .prologue
    .line 735
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$600()Z

    move-result v3

    if-nez v3, :cond_0

    .line 736
    const-string v3, "CallDetailFragment"

    const-string v5, "!mCallDetailIsRunning"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :goto_0
    return-void

    .line 740
    :cond_0
    if-eqz p1, :cond_1

    const/4 v3, 0x0

    aget-object v3, p1, v3

    if-nez v3, :cond_2

    .line 745
    :cond_1
    const-string v3, "CallDetailFragment"

    const-string v5, "details or details[0] = null "

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->clearDetailInfo()V

    goto :goto_0

    .line 750
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$702(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .line 751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, p1

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    invoke-static {v3, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$702(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .line 755
    const/4 v3, 0x0

    aget-object v34, p1, v3

    .line 758
    .local v34, firstDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$802(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mName:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$902(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 760
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 761
    .local v17, contactUri:Landroid/net/Uri;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    move-object/from16 v50, v0

    .line 767
    .local v50, photoUri:Landroid/net/Uri;
    const/16 v49, 0x0

    .line 768
    .local v49, numberCallUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v5

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->canPlaceCallsTo:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1002(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Z)Z

    .line 769
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v44

    .line 770
    .local v44, isVoicemailNumber:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v43

    .line 772
    .local v43, isSipNumber:Z
    move-object/from16 v0, v34

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v5, 0x78

    if-eq v3, v5, :cond_3

    move-object/from16 v0, v34

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v5, 0x1fe

    if-ne v3, v5, :cond_e

    .line 773
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1202(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v49

    .line 794
    :cond_4
    :goto_1
    const-string v3, "phone_number_locator"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-3"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "P"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 800
    const/16 v51, 0x0

    .line 801
    .local v51, query_number:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1502(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 802
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "+86"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 803
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v51

    .line 806
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-static {v5, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getNumberProvinceAndCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1502(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 807
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->closeLocationBinFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    .end local v51           #query_number:Ljava/lang/String;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 816
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #calls: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->adjustListItemLayoutByFontSize()V
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1600(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    .line 819
    :cond_6
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 820
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v3, v5, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->setCallDetailsHeader(Landroid/widget/TextView;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V

    .line 822
    const-string v3, "phone_number_locator"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 823
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11

    .line 824
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    .line 825
    .local v45, mSubTitle:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    const-string v3, "  |  "

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    .end local v45           #mSubTitle:Ljava/lang/StringBuilder;
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090066

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    .line 845
    .local v18, detailInfoButton:Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090067

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout;

    .line 848
    .local v19, detailInfoButton2:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 850
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09004c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    .line 851
    .local v23, detailInfoLandButton:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 856
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 860
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isAvailChatOnVoiceCall:Z

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isAvailChatOnVideoCall:Z

    if-eqz v3, :cond_14

    .line 862
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09006d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 863
    .local v20, detailInfoButton3:Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 864
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090076

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 865
    .local v21, detailInfoButton4:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 867
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090093

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    .line 868
    .local v28, detailInfoLandMargin_1:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090094

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    .line 870
    .local v29, detailInfoLandMargin_2:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090069

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 872
    .local v24, detailInfoLandButton_2:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09006f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 874
    .local v25, detailInfoLandButton_3:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 875
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090078

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 876
    .local v26, detailInfoLandButton_4:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 909
    .end local v20           #detailInfoButton3:Landroid/widget/RelativeLayout;
    .end local v21           #detailInfoButton4:Landroid/widget/RelativeLayout;
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09007b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 910
    .local v22, detailInfoButton5:Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09007d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 913
    .local v27, detailInfoLandButton_5:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1065
    .end local v18           #detailInfoButton:Landroid/widget/RelativeLayout;
    .end local v19           #detailInfoButton2:Landroid/widget/RelativeLayout;
    .end local v22           #detailInfoButton5:Landroid/widget/RelativeLayout;
    .end local v23           #detailInfoLandButton:Landroid/widget/LinearLayout;
    .end local v24           #detailInfoLandButton_2:Landroid/widget/LinearLayout;
    .end local v25           #detailInfoLandButton_3:Landroid/widget/LinearLayout;
    .end local v26           #detailInfoLandButton_4:Landroid/widget/LinearLayout;
    .end local v27           #detailInfoLandButton_5:Landroid/widget/LinearLayout;
    .end local v28           #detailInfoLandMargin_1:Landroid/widget/LinearLayout;
    .end local v29           #detailInfoLandMargin_2:Landroid/widget/LinearLayout;
    :goto_6
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 1066
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v48, v0

    .line 1070
    .local v48, nameOrNumber:Ljava/lang/CharSequence;
    :goto_7
    if-eqz v17, :cond_22

    .line 1071
    new-instance v47, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v47

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1073
    .local v47, mainActionIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0d021f

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v48, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    .line 1110
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->canPlaceCallsTo:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5, v7}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v30

    .line 1115
    .local v30, displayNumber:Ljava/lang/CharSequence;
    const-string v3, "feature_chn_duos_cdma_gsm"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1116
    new-instance v41, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v41

    move-object/from16 v1, v49

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1117
    .local v41, intent_sim1_call:Landroid/content/Intent;
    const-string v3, "ril.ICC2_TYPE"

    const-string v5, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_9

    const-string v3, "ril.ICC2_TYPE"

    const-string v5, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_9

    const-string v3, "ril.ICC2_TYPE"

    const-string v5, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_26

    :cond_9
    const-string v3, "ril.ICC_TYPE"

    const-string v5, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_26

    .line 1121
    const-string v3, "simnum"

    const/4 v5, 0x2

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1126
    :goto_9
    new-instance v32, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0d002d

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v30, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0d0220

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v48, v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-direct {v0, v3, v1, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1139
    .end local v41           #intent_sim1_call:Landroid/content/Intent;
    .local v32, entry:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;
    :goto_a
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, v34

    iget v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v3, v5, v7}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v32

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 1145
    :cond_a
    new-instance v36, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v36

    move-object/from16 v1, v49

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1146
    .local v36, intent:Landroid/content/Intent;
    const-string v3, "videocall"

    const/4 v5, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1147
    const/high16 v3, 0x1000

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0d0220

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v48, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setSecondaryAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canSendSmsTo(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1154
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v7, "sms"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    const-string v10, "P"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    const-string v10, "W"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0d0221

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v48, v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setTertiaryAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1162
    :cond_b
    new-instance v42, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v42

    move-object/from16 v1, v49

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1163
    .local v42, intent_sim2_call:Landroid/content/Intent;
    const-string v3, "simnum"

    const/4 v5, 0x2

    move-object/from16 v0, v42

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1164
    const/high16 v3, 0x1000

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0d0220

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v48, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setSim2CallAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1168
    new-instance v40, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v40

    move-object/from16 v1, v49

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1169
    .local v40, intent_ipcall:Landroid/content/Intent;
    const-string v3, "ipcall"

    const/4 v5, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1170
    const/high16 v3, 0x1000

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0d0220

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v48, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setQuanternaryAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setQuinticAction(Ljava/lang/String;)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setSexticAction(Ljava/lang/String;)V

    .line 1177
    new-instance v38, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1178
    .local v38, intent_chatonMsg:Landroid/content/Intent;
    const-string v3, "chaton://"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1179
    const-string v3, "receiver"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1180
    const-string v3, "ignore_keyguard"

    const/4 v5, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1181
    const/high16 v3, 0x1000

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0d0221

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v48, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setChatOnMsgAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1184
    new-instance v37, Landroid/content/Intent;

    const-string v3, "com.coolots.chaton.CALL_SHORTCUT"

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1185
    .local v37, intent_chatonCall:Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1186
    const/high16 v3, 0x1000

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0d0220

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v48, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setChatOnCallAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1189
    new-instance v39, Landroid/content/Intent;

    const-string v3, "com.coolots.chaton.CALL_SHORTCUT"

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1190
    .local v39, intent_chatonVT:Landroid/content/Intent;
    new-instance v33, Landroid/os/Bundle;

    invoke-direct/range {v33 .. v33}, Landroid/os/Bundle;-><init>()V

    .line 1191
    .local v33, extras:Landroid/os/Bundle;
    const-string v3, "videocall"

    const/4 v5, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1192
    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1194
    const/high16 v3, 0x1000

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0d0220

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v48, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setChatOnVTAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1198
    if-eqz v17, :cond_c

    .line 1199
    new-instance v53, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v53

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1200
    .local v53, viewContactActionIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0d021f

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v48, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v52

    .line 1201
    .local v52, viewContactActionDescription:Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v53

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setViewContactAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1204
    .end local v52           #viewContactActionDescription:Ljava/lang/String;
    .end local v53           #viewContactActionIntent:Landroid/content/Intent;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, v32

    #calls: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->configureCallButton(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;)V
    invoke-static {v3, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f090041

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->contactImage:Landroid/view/View;
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2202(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Landroid/view/View;)Landroid/view/View;

    .line 1206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->contactImage:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View$OnKeyListener;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1208
    .end local v30           #displayNumber:Ljava/lang/CharSequence;
    .end local v32           #entry:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;
    .end local v33           #extras:Landroid/os/Bundle;
    .end local v36           #intent:Landroid/content/Intent;
    .end local v37           #intent_chatonCall:Landroid/content/Intent;
    .end local v38           #intent_chatonMsg:Landroid/content/Intent;
    .end local v39           #intent_chatonVT:Landroid/content/Intent;
    .end local v40           #intent_ipcall:Landroid/content/Intent;
    .end local v42           #intent_sim2_call:Landroid/content/Intent;
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->canPlaceCallsTo:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Z

    move-result v3

    if-eqz v3, :cond_28

    if-nez v43, :cond_28

    if-nez v44, :cond_28

    const/4 v3, 0x1

    :goto_b
    #setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHasEditNumberBeforeCall:Z
    invoke-static {v5, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2402(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Z)Z

    .line 1210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09003e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/ListView;

    .line 1212
    .local v35, historyList:Landroid/widget/ListView;
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iget-object v9, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->canPlaceCallsTo:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Z

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v11, p1

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZZLandroid/view/View;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, v34

    iget v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    int-to-long v7, v5

    move-object/from16 v0, v50

    #calls: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->loadContactPhotos(Landroid/net/Uri;J)V
    invoke-static {v3, v0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2600(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Landroid/net/Uri;J)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 777
    .end local v35           #historyList:Landroid/widget/ListView;
    .end local v47           #mainActionIntent:Landroid/content/Intent;
    .end local v48           #nameOrNumber:Ljava/lang/CharSequence;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v49

    .line 779
    const-string v16, "vnd.chaton.item/vnd.com.chaton.profile"

    .line 780
    .local v16, chatOnMimeType:Ljava/lang/String;
    const-string v6, "mimetype=?"

    .line 781
    .local v6, selection:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    move-object/from16 v0, v34

    iget-wide v7, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "data"

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 783
    .local v4, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "data1"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 784
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_f

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 785
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1202(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 789
    :goto_c
    if-eqz v15, :cond_4

    .line 790
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 787
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1202(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_c

    .line 805
    .end local v4           #uri:Landroid/net/Uri;
    .end local v6           #selection:Ljava/lang/String;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v16           #chatOnMimeType:Ljava/lang/String;
    .restart local v51       #query_number:Ljava/lang/String;
    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v51

    goto/16 :goto_2

    .line 809
    :catch_0
    move-exception v31

    .line 810
    .local v31, e:Ljava/lang/Exception;
    const-string v3, "CallDetailFragment"

    const-string v5, "getNumberProvinceAndCity exception"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 830
    .end local v31           #e:Ljava/lang/Exception;
    .end local v51           #query_number:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 833
    :cond_12
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v5

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7, v8}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCnapName:Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCnapName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    .line 837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iget-object v7, v7, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCnapName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 840
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 880
    .restart local v18       #detailInfoButton:Landroid/widget/RelativeLayout;
    .restart local v19       #detailInfoButton2:Landroid/widget/RelativeLayout;
    .restart local v23       #detailInfoLandButton:Landroid/widget/LinearLayout;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09006d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 881
    .restart local v20       #detailInfoButton3:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 882
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090076

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 883
    .restart local v21       #detailInfoButton4:Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090093

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    .line 886
    .restart local v28       #detailInfoLandMargin_1:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 887
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090094

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    .line 888
    .restart local v29       #detailInfoLandMargin_2:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 889
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090069

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 890
    .restart local v24       #detailInfoLandButton_2:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09006f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 892
    .restart local v25       #detailInfoLandButton_3:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 893
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090078

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 894
    .restart local v26       #detailInfoLandButton_4:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 897
    .end local v20           #detailInfoButton3:Landroid/widget/RelativeLayout;
    .end local v21           #detailInfoButton4:Landroid/widget/RelativeLayout;
    .end local v24           #detailInfoLandButton_2:Landroid/widget/LinearLayout;
    .end local v25           #detailInfoLandButton_3:Landroid/widget/LinearLayout;
    .end local v26           #detailInfoLandButton_4:Landroid/widget/LinearLayout;
    .end local v28           #detailInfoLandMargin_1:Landroid/widget/LinearLayout;
    .end local v29           #detailInfoLandMargin_2:Landroid/widget/LinearLayout;
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090093

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    .line 898
    .restart local v28       #detailInfoLandMargin_1:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090094

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    .line 900
    .restart local v29       #detailInfoLandMargin_2:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090069

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 902
    .restart local v24       #detailInfoLandButton_2:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 903
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09006f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 904
    .restart local v25       #detailInfoLandButton_3:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 905
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090078

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 906
    .restart local v26       #detailInfoLandButton_4:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 917
    .end local v18           #detailInfoButton:Landroid/widget/RelativeLayout;
    .end local v19           #detailInfoButton2:Landroid/widget/RelativeLayout;
    .end local v23           #detailInfoLandButton:Landroid/widget/LinearLayout;
    .end local v24           #detailInfoLandButton_2:Landroid/widget/LinearLayout;
    .end local v25           #detailInfoLandButton_3:Landroid/widget/LinearLayout;
    .end local v26           #detailInfoLandButton_4:Landroid/widget/LinearLayout;
    .end local v28           #detailInfoLandMargin_1:Landroid/widget/LinearLayout;
    .end local v29           #detailInfoLandMargin_2:Landroid/widget/LinearLayout;
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 918
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-3"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "P"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 923
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090066

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    .line 924
    .restart local v18       #detailInfoButton:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 926
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090067

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout;

    .line 927
    .restart local v19       #detailInfoButton2:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 929
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09004c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    .line 930
    .restart local v23       #detailInfoLandButton:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 932
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090093

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    .line 933
    .restart local v28       #detailInfoLandMargin_1:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 934
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090094

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    .line 935
    .restart local v29       #detailInfoLandMargin_2:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 936
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090069

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 937
    .restart local v24       #detailInfoLandButton_2:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 939
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09006d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 940
    .restart local v20       #detailInfoButton3:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 941
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090076

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 942
    .restart local v21       #detailInfoButton4:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 943
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09007b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 944
    .restart local v22       #detailInfoButton5:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 945
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09006f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 946
    .restart local v25       #detailInfoLandButton_3:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 947
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090078

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 948
    .restart local v26       #detailInfoLandButton_4:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 949
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09007d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 950
    .restart local v27       #detailInfoLandButton_5:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 952
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 953
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0d0099

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1020
    .end local v18           #detailInfoButton:Landroid/widget/RelativeLayout;
    .end local v19           #detailInfoButton2:Landroid/widget/RelativeLayout;
    .end local v20           #detailInfoButton3:Landroid/widget/RelativeLayout;
    .end local v21           #detailInfoButton4:Landroid/widget/RelativeLayout;
    .end local v22           #detailInfoButton5:Landroid/widget/RelativeLayout;
    .end local v23           #detailInfoLandButton:Landroid/widget/LinearLayout;
    .end local v24           #detailInfoLandButton_2:Landroid/widget/LinearLayout;
    .end local v25           #detailInfoLandButton_3:Landroid/widget/LinearLayout;
    .end local v26           #detailInfoLandButton_4:Landroid/widget/LinearLayout;
    .end local v27           #detailInfoLandButton_5:Landroid/widget/LinearLayout;
    .end local v28           #detailInfoLandMargin_1:Landroid/widget/LinearLayout;
    .end local v29           #detailInfoLandMargin_2:Landroid/widget/LinearLayout;
    :cond_18
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 954
    .restart local v18       #detailInfoButton:Landroid/widget/RelativeLayout;
    .restart local v19       #detailInfoButton2:Landroid/widget/RelativeLayout;
    .restart local v20       #detailInfoButton3:Landroid/widget/RelativeLayout;
    .restart local v21       #detailInfoButton4:Landroid/widget/RelativeLayout;
    .restart local v22       #detailInfoButton5:Landroid/widget/RelativeLayout;
    .restart local v23       #detailInfoLandButton:Landroid/widget/LinearLayout;
    .restart local v24       #detailInfoLandButton_2:Landroid/widget/LinearLayout;
    .restart local v25       #detailInfoLandButton_3:Landroid/widget/LinearLayout;
    .restart local v26       #detailInfoLandButton_4:Landroid/widget/LinearLayout;
    .restart local v27       #detailInfoLandButton_5:Landroid/widget/LinearLayout;
    .restart local v28       #detailInfoLandMargin_1:Landroid/widget/LinearLayout;
    .restart local v29       #detailInfoLandMargin_2:Landroid/widget/LinearLayout;
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "P"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 956
    :cond_1a
    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 957
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0d0099

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 959
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0d009a

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 962
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0d009b

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 966
    .end local v18           #detailInfoButton:Landroid/widget/RelativeLayout;
    .end local v19           #detailInfoButton2:Landroid/widget/RelativeLayout;
    .end local v20           #detailInfoButton3:Landroid/widget/RelativeLayout;
    .end local v21           #detailInfoButton4:Landroid/widget/RelativeLayout;
    .end local v22           #detailInfoButton5:Landroid/widget/RelativeLayout;
    .end local v23           #detailInfoLandButton:Landroid/widget/LinearLayout;
    .end local v24           #detailInfoLandButton_2:Landroid/widget/LinearLayout;
    .end local v25           #detailInfoLandButton_3:Landroid/widget/LinearLayout;
    .end local v26           #detailInfoLandButton_4:Landroid/widget/LinearLayout;
    .end local v27           #detailInfoLandButton_5:Landroid/widget/LinearLayout;
    .end local v28           #detailInfoLandMargin_1:Landroid/widget/LinearLayout;
    .end local v29           #detailInfoLandMargin_2:Landroid/widget/LinearLayout;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090066

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    .line 967
    .restart local v18       #detailInfoButton:Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 969
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090067

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout;

    .line 970
    .restart local v19       #detailInfoButton2:Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09004c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    .line 973
    .restart local v23       #detailInfoLandButton:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09006d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 976
    .restart local v20       #detailInfoButton3:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 977
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090076

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 978
    .restart local v21       #detailInfoButton4:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09007b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 980
    .restart local v22       #detailInfoButton5:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 982
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090093

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    .line 983
    .restart local v28       #detailInfoLandMargin_1:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 984
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090094

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    .line 985
    .restart local v29       #detailInfoLandMargin_2:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090069

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 987
    .restart local v24       #detailInfoLandButton_2:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 989
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09006f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 990
    .restart local v25       #detailInfoLandButton_3:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 991
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090078

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 992
    .restart local v26       #detailInfoLandButton_4:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 993
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09007d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 994
    .restart local v27       #detailInfoLandButton_5:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 996
    const-string v3, "phone_number_locator"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 997
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1e

    .line 998
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    .line 999
    .restart local v45       #mSubTitle:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    const-string v3, "  |  "

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1004
    .end local v45           #mSubTitle:Ljava/lang/StringBuilder;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1007
    :cond_1f
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1008
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v5

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7, v8}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCnapName:Ljava/lang/String;

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCnapName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_18

    .line 1011
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iget-object v7, v7, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCnapName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1014
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1068
    .end local v18           #detailInfoButton:Landroid/widget/RelativeLayout;
    .end local v19           #detailInfoButton2:Landroid/widget/RelativeLayout;
    .end local v20           #detailInfoButton3:Landroid/widget/RelativeLayout;
    .end local v21           #detailInfoButton4:Landroid/widget/RelativeLayout;
    .end local v22           #detailInfoButton5:Landroid/widget/RelativeLayout;
    .end local v23           #detailInfoLandButton:Landroid/widget/LinearLayout;
    .end local v24           #detailInfoLandButton_2:Landroid/widget/LinearLayout;
    .end local v25           #detailInfoLandButton_3:Landroid/widget/LinearLayout;
    .end local v26           #detailInfoLandButton_4:Landroid/widget/LinearLayout;
    .end local v27           #detailInfoLandButton_5:Landroid/widget/LinearLayout;
    .end local v28           #detailInfoLandMargin_1:Landroid/widget/LinearLayout;
    .end local v29           #detailInfoLandMargin_2:Landroid/widget/LinearLayout;
    :cond_21
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v48, v0

    .restart local v48       #nameOrNumber:Ljava/lang/CharSequence;
    goto/16 :goto_7

    .line 1075
    :cond_22
    if-eqz v44, :cond_23

    .line 1076
    const/16 v47, 0x0

    .line 1078
    .restart local v47       #mainActionIntent:Landroid/content/Intent;
    const/16 v46, 0x0

    .local v46, mainActionDescription:Ljava/lang/String;
    goto/16 :goto_8

    .line 1079
    .end local v46           #mainActionDescription:Ljava/lang/String;
    .end local v47           #mainActionIntent:Landroid/content/Intent;
    :cond_23
    if-eqz v43, :cond_24

    .line 1089
    const/16 v47, 0x0

    .line 1091
    .restart local v47       #mainActionIntent:Landroid/content/Intent;
    const/16 v46, 0x0

    .restart local v46       #mainActionDescription:Ljava/lang/String;
    goto/16 :goto_8

    .line 1092
    .end local v46           #mainActionDescription:Ljava/lang/String;
    .end local v47           #mainActionIntent:Landroid/content/Intent;
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->canPlaceCallsTo:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1093
    new-instance v47, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v47

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1094
    .restart local v47       #mainActionIntent:Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1095
    const-string v3, "phone"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1098
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0d021e

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v46

    .restart local v46       #mainActionDescription:Ljava/lang/String;
    goto/16 :goto_8

    .line 1099
    .end local v46           #mainActionDescription:Ljava/lang/String;
    :catch_1
    move-exception v31

    .line 1100
    .local v31, e:Ljava/lang/IllegalStateException;
    const-string v3, "CallDetailFragment"

    const-string v5, "IllegalStateException exception"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1105
    .end local v31           #e:Ljava/lang/IllegalStateException;
    .end local v47           #mainActionIntent:Landroid/content/Intent;
    :cond_25
    const/16 v47, 0x0

    .line 1107
    .restart local v47       #mainActionIntent:Landroid/content/Intent;
    goto/16 :goto_8

    .line 1124
    .restart local v30       #displayNumber:Ljava/lang/CharSequence;
    .restart local v41       #intent_sim1_call:Landroid/content/Intent;
    :cond_26
    const-string v3, "simnum"

    const/4 v5, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_9

    .line 1132
    .end local v41           #intent_sim1_call:Landroid/content/Intent;
    :cond_27
    new-instance v32, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0d002d

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v30, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v49

    invoke-direct {v5, v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0d0220

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v48, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-direct {v0, v3, v5, v7}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .restart local v32       #entry:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;
    goto/16 :goto_a

    .line 1208
    .end local v30           #displayNumber:Ljava/lang/CharSequence;
    .end local v32           #entry:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;
    :cond_28
    const/4 v3, 0x0

    goto/16 :goto_b
.end method
