.class Lcom/samsung/mms/location/LocationMapActivity$23;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/location/LocationMapActivity;->createLocWifiEnableDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/LocationMapActivity;

.field final synthetic val$pref:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LocationMapActivity;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3084
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$23;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    iput-object p2, p0, Lcom/samsung/mms/location/LocationMapActivity$23;->val$pref:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "button"
    .parameter "check"

    .prologue
    .line 3087
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$23;->val$pref:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 3088
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$23;->val$pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3089
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_loc_do_not_ask_again"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3090
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3091
    const-string v1, "LocationMapActivity"

    const-string v2, "unable to commit check box"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3094
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
