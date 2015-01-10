.class Lcom/android/mms/ui/CbConfigPreferenceActivityDs$2;
.super Ljava/lang/Object;
.source "CbConfigPreferenceActivityDs.java"

# interfaces
.implements Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;


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
    .line 284
    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$2;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMyChannelSet(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "mode"
    .parameter "channelId"
    .parameter "oldChannelId"
    .parameter "simSlot"

    .prologue
    const/4 v4, 0x0

    .line 286
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$2;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$600(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$500()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "sim_slot"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 288
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$2;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    invoke-virtual {v0, p3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 291
    .local v7, pref:Landroid/preference/CheckBoxPreference;
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$2;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    invoke-virtual {v0, v7, v6}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->setPreferenceAttr(Landroid/preference/CheckBoxPreference;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    .end local v7           #pref:Landroid/preference/CheckBoxPreference;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$2;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 304
    return-void

    .line 293
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$2;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #calls: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->createChannelPreference(Landroid/database/Cursor;)Landroid/preference/CheckBoxPreference;
    invoke-static {v0, v6}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$700(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;Landroid/database/Cursor;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    .line 294
    .local v7, pref:Landroid/preference/Preference;
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$2;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->mChannelContainer:Landroid/preference/PreferenceGroup;
    invoke-static {v0}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 298
    .end local v7           #pref:Landroid/preference/Preference;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$2;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    throw v0
.end method
