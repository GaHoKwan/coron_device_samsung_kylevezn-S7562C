.class Lcom/android/uiautomator/core/InteractionController$4;
.super Ljava/lang/Object;
.source "InteractionController.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/core/InteractionController;->scrollSwipe(IIIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Landroid/view/accessibility/AccessibilityEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/InteractionController;


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/InteractionController;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController$4;->this$0:Lcom/android/uiautomator/core/InteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    check-cast p1, Landroid/view/accessibility/AccessibilityEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/core/InteractionController$4;->apply(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
