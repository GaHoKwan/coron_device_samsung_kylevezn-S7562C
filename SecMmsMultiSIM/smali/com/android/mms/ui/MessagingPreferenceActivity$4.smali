.class Lcom/android/mms/ui/MessagingPreferenceActivity$4;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1219
    return-void
.end method
