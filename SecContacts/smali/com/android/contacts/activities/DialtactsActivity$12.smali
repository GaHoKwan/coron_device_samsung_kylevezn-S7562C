.class Lcom/android/contacts/activities/DialtactsActivity$12;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/DialtactsActivity;->prepareSearchView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1463
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$12;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 1466
    if-eqz p2, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$12;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/android/contacts/activities/DialtactsActivity;->showInputMethod(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$4200(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/View;)V

    .line 1469
    :cond_0
    return-void
.end method
