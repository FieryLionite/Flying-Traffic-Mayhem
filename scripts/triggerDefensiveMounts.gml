for (i = 0; i < 4; i ++){
    mount = getAIMount(i);
    if (!instance_exists(mount))
        continue;
    if (mount.triggerWhenAhead && target.x > x) || !mount.isTool
        continue;
    mount.triggered = true;
}
