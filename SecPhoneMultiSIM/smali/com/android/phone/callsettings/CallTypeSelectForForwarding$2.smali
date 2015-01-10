.class Lcom/android/phone/callsettings/CallTypeSelectForForwarding$2;
.super Ljava/lang/Object;
.source "CallTypeSelectForForwarding.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallTypeSelectForForwarding;

.field final synthetic val$title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallTypeSelectForForwarding;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding$2;->this$0:Lcom/android/phone/callsettings/CallTypeSelectForForwarding;

    iput-object p2, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding$2;->val$title:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, myIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding$2;->this$0:Lcom/android/phone/callsettings/CallTypeSelectForForwarding;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.phone.CallSettingsTabActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v1, "TabTitleString"

    iget-object v2, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding$2;->val$title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 113
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    const-string v1, "CallSettingMenu"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding$2;->this$0:Lcom/android/phone/callsettings/CallTypeSelectForForwarding;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method
