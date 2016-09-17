#ifndef HITPOINTS_H
#define HITPOINTS_H

namespace hitpoints
{

void init();
void update(uint32_t now);
bool areWeDead();
void applyHit(uint32_t now);

} // namespace

#endif // HITPOINTS_H
