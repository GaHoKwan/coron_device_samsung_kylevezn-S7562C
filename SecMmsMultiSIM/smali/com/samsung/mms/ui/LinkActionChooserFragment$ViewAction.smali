.class Lcom/samsung/mms/ui/LinkActionChooserFragment$ViewAction;
.super Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;
.source "LinkActionChooserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/LinkActionChooserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewAction"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "titleId"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;-><init>(I)V

    .line 159
    return-void
.end method


# virtual methods
.method public execute(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "text"

    .prologue
    .line 163
    invoke-static {p2}, Lcom/android/mms/util/PackageInfo;->getIntentForUrl(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 164
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 165
    return-void
.end method
