.class Lcom/android/mms/ui/CMASPreferenceActivity$1;
.super Ljava/lang/Object;
.source "CMASPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CMASPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CMASPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/mms/ui/CMASPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CMASPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CMASPreferenceActivity;

    #calls: Lcom/android/mms/ui/CMASPreferenceActivity;->restoreDefaultPreferences()V
    invoke-static {v0}, Lcom/android/mms/ui/CMASPreferenceActivity;->access$000(Lcom/android/mms/ui/CMASPreferenceActivity;)V

    .line 417
    return-void
.end method
