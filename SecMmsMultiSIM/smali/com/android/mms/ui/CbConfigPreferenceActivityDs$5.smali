.class Lcom/android/mms/ui/CbConfigPreferenceActivityDs$5;
.super Ljava/lang/Object;
.source "CbConfigPreferenceActivityDs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    iput p2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->mChannelContainer:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$5;->val$position:I

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 392
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/ChannelUtils;->removeChannel(Landroid/content/Context;Ljava/lang/String;I)V

    .line 393
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->mChannelContainer:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 395
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 396
    return-void
.end method
