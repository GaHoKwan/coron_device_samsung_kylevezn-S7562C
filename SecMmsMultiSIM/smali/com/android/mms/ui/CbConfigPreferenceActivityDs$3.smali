.class Lcom/android/mms/ui/CbConfigPreferenceActivityDs$3;
.super Ljava/lang/Object;
.source "CbConfigPreferenceActivityDs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CbConfigPreferenceActivityDs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 309
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .local v3, key:Ljava/lang/String;
    move-object v0, p2

    .line 310
    check-cast v0, Ljava/lang/Boolean;

    .line 312
    .local v0, bChecked:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 313
    iget-object v7, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$800(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "pref_cb_my_channel_max_count_sim2"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 315
    .local v1, cb_channel_max:I
    iget-object v7, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    invoke-static {v7, v6}, Lcom/android/mms/ui/ChannelUtils;->getCheckedCount(Landroid/content/Context;I)I

    move-result v2

    .line 316
    .local v2, checkedCount:I
    if-lt v2, v1, :cond_2

    .line 318
    iget-object v7, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->mToast:Landroid/widget/Toast;
    invoke-static {v7}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$900(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)Landroid/widget/Toast;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->mToast:Landroid/widget/Toast;
    invoke-static {v7}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$900(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->mToast:Landroid/widget/Toast;
    invoke-static {v7}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$900(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->isShown()Z

    move-result v7

    if-nez v7, :cond_1

    .line 319
    :cond_0
    iget-object v7, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    iget-object v8, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    iget-object v9, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    const v10, 0x7f0a0099

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    #setter for: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->mToast:Landroid/widget/Toast;
    invoke-static {v7, v6}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$902(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 322
    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->mToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$900(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 324
    :cond_1
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 339
    .end local v1           #cb_channel_max:I
    .end local v2           #checkedCount:I
    :goto_0
    return v5

    .line 329
    .restart local p1
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .local v4, values:Landroid/content/ContentValues;
    const-string v7, "is_checked"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    move v5, v6

    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    iget-object v5, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$600(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "channel_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "sim_slot"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v4, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 334
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    .line 335
    const-string v5, "Mms/CbConfigPreferenceActivityDs"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mMyChannelCheckListener - channelid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bChecked = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mSimSlot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v5, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    const/4 v7, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v7, v8, v6}, Lcom/android/mms/ui/ChannelUtils;->removeCbChannelRange(Landroid/content/Context;III)V

    :cond_4
    move v5, v6

    .line 339
    goto/16 :goto_0
.end method
