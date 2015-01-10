.class Lcom/android/mms/ui/FakeCallActivity$1;
.super Ljava/lang/Object;
.source "FakeCallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FakeCallActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FakeCallActivity;

.field final synthetic val$tiltPopupAni:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FakeCallActivity;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/mms/ui/FakeCallActivity$1;->this$0:Lcom/android/mms/ui/FakeCallActivity;

    iput-object p2, p0, Lcom/android/mms/ui/FakeCallActivity$1;->val$tiltPopupAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/FakeCallActivity$1;->val$tiltPopupAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 97
    return-void
.end method
