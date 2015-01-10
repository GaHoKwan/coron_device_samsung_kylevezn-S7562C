.class Lcom/android/mms/ui/CbConfigPreferenceActivityDs$1;
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
    .line 265
    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "pref"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 267
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 268
    .local v0, chSelection:Ljava/lang/String;
    const-string v1, "My channel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    const v2, 0x7f0a0135

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->mChannelContainer:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 271
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #calls: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->refreshMyChannel()V
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$300(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)V

    .line 280
    :cond_0
    :goto_0
    return v3

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    const v2, 0x7f0a0141

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->mChannelContainer:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 275
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->mChannelContainer:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->mChannelContainer:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 277
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #calls: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->addPreferencesAddMyChannel()V
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$400(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)V

    goto :goto_0
.end method
