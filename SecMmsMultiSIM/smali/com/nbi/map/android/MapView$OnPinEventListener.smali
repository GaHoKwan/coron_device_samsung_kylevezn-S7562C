.class public interface abstract Lcom/nbi/map/android/MapView$OnPinEventListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nbi/map/android/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPinEventListener"
.end annotation


# virtual methods
.method public abstract onPinBubbleDraw(Lcom/nbi/map/android/MapView;Landroid/graphics/Canvas;III)V
.end method

.method public abstract onPinBubbleGetRectangle(Lcom/nbi/map/android/MapView;III)Lcom/nbi/map/data/Rectangle;
.end method

.method public abstract onPinDragEnd(Lcom/nbi/map/android/MapView;ILcom/nbi/map/data/Coordinates;)Z
.end method

.method public abstract onPinDragRequest(Lcom/nbi/map/android/MapView;I)Z
.end method

.method public abstract onPinDrop(Lcom/nbi/map/android/MapView;II)Z
.end method

.method public abstract onPinDropped(Lcom/nbi/map/android/MapView;I)V
.end method

.method public abstract onPinSelected(Lcom/nbi/map/android/MapView;I)V
.end method

.method public abstract onPinTouched(Lcom/nbi/map/android/MapView;IZ)Z
.end method

.method public abstract onPinTrafficBubbleTouched(Lcom/nbi/map/android/MapView;Lcom/nbi/map/data/TrafficIncident;)V
.end method
