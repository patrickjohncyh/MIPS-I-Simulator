/*
 * Simulator.hpp
 *
 *  Created on: Nov 1, 2017
 *      Author: kayne
 */
#ifndef SIMULATOR_HPP
#define	SIMULATOR_HPP

#include "Memory.hpp"
#include "Register.hpp"
#include <cstdint>


//#define R_OPCODE 0
//#define J_OPCODE 2,3
//#define I_OPCODE 4 //idk?

#define OP_MASK 0xFC000000

#define RS_MASK 0x03E00000
#define RT_MASK 0x001F0000
#define RD_MASK 0x0000F800
#define SHAMT_MASK 0x000007C0
#define FUNCT_MASK 0x0000003F

#define IM_MASK 0x0000FFFF
#define JA_MASK 0x03FFFFFF


class Simulator{

private:
	std::uint32_t pc;
	std::uint32_t (Simulator::*opcode_function_table[8][8])();

	Memory mem;
	Register reg;
	std::uint32_t r_operands[5];
	std::uint32_t i_operands[3];
	std::uint32_t j_operands[1];

	std::uint32_t invalid_func();

	std::uint32_t bltz();
	std::uint32_t bgez();
	std::uint32_t j();
	std::uint32_t jal();
	std::uint32_t beq();
	std::uint32_t bne();
	std::uint32_t blez();
	std::uint32_t bgtz();
	std::uint32_t addi();
	std::uint32_t addiu();
	std::uint32_t slti();
	std::uint32_t sltiu();
	std::uint32_t andi();
	std::uint32_t ori();
	std::uint32_t xori();
	std::uint32_t lui();
	std::uint32_t lb();
	std::uint32_t lh();
	std::uint32_t lwl();
	std::uint32_t lw();
	std::uint32_t lbu();
	std::uint32_t lhu();
	std::uint32_t lwr();
	std::uint32_t sb();
	std::uint32_t sh();
	std::uint32_t swl();
	std::uint32_t sw();
	std::uint32_t swr();

	std::uint32_t sll();
	std::uint32_t srl();
	std::uint32_t sra();
	std::uint32_t sllv();
	std::uint32_t srlv();
	std::uint32_t srav();
	std::uint32_t jr();
	std::uint32_t jalr();
	std::uint32_t mfhi();
	std::uint32_t mthi();
	std::uint32_t mflo();
	std::uint32_t mtlo();
	std::uint32_t mult();
	std::uint32_t multu();
	std::uint32_t div();
	std::uint32_t divu();
	std::uint32_t add();
	std::uint32_t addu();
	std::uint32_t subtract();
	std::uint32_t subu();
	std::uint32_t bwand();
	std::uint32_t bwor(); 
	std::uint32_t bwxor();
	std::uint32_t bwnor();
	std::uint32_t slt();
	std::uint32_t sltu();
	
	


public:

	std::uint32_t stub();
	Simulator();
	Simulator(std::uint32_t pc_in);
	
	void run();
	void decode();
	
	
};


#endif
